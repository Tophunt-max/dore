###### Class com.igexin.push.extension.distribution.gbd.a.b.j (com.igexin.push.extension.distribution.gbd.a.b.j)
.class public Lcom/igexin/push/extension/distribution/gbd/a/b/j;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/igexin/push/extension/distribution/gbd/a/b/j;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/text/SimpleDateFormat;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/igexin/push/extension/distribution/gbd/a/b/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->e:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->f:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->g:Ljava/util/Map;

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a:Landroid/content/Context;

    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->b:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 33

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "pkg: "

    const-string v4, "GBD_GPSA"

    :try_start_a
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_19e

    const-string v6, "GBD_GPSA_guard"

    if-nez v5, :cond_18c

    :try_start_12
    sget-object v5, Lcom/igexin/push/extension/distribution/gbd/c/c;->U:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_20

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    goto :goto_27

    :cond_20
    new-instance v5, Lorg/json/JSONObject;

    sget-object v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->U:Ljava/lang/String;

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_27
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_19e

    const/4 v10, 0x1

    const-string v11, "#"

    const/4 v12, 0x0

    if-eqz v7, :cond_7b

    :try_start_31
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v13, v7, v12

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    aget-object v15, v7, v10

    invoke-static {v15}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const/16 v17, 0x2

    aget-object v17, v7, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    array-length v8, v7

    const/4 v9, 0x5

    if-lt v8, v9, :cond_78

    const/4 v8, 0x3

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/16 v18, 0x4

    aget-object v7, v7, v18

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-wide/from16 v18, v8

    move-wide v8, v13

    goto :goto_84

    :cond_78
    move-wide v8, v13

    const/4 v7, 0x0

    goto :goto_82

    :cond_7b
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    :goto_82
    const-wide/16 v18, 0x0

    :goto_84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v20, v13, v8

    const-wide/32 v22, 0x5265c00

    cmp-long v24, v20, v22

    if-ltz v24, :cond_95

    move-wide v8, v13

    const/4 v7, 0x0

    const/4 v10, 0x0

    goto :goto_97

    :cond_95
    move/from16 v10, v17

    :goto_97
    if-eqz v2, :cond_9c

    sub-long v20, v13, v18

    goto :goto_9e

    :cond_9c
    sub-long v20, v13, v15

    :goto_9e
    if-eqz v2, :cond_a2

    move v12, v7

    goto :goto_a3

    :cond_a2
    move v12, v10

    :goto_a3
    move-wide/from16 v23, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", isTransmission: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", dynamicGuardTimeDiff s: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v25, 0x3e8

    move-wide/from16 v27, v15

    div-long v14, v20, v25

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", lastCount: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v3, Lcom/igexin/push/extension/distribution/gbd/c/a;->bg:J

    mul-long v3, v3, v25

    cmp-long v12, v20, v3

    if-ltz v12, :cond_f5

    sget v3, Lcom/igexin/push/extension/distribution/gbd/c/a;->be:I

    if-ge v10, v3, :cond_f5

    const/4 v3, 0x1

    goto :goto_f6

    :cond_f5
    const/4 v3, 0x0

    :goto_f6
    sget-wide v12, Lcom/igexin/push/extension/distribution/gbd/c/a;->bh:J

    mul-long v12, v12, v25

    cmp-long v4, v20, v12

    if-ltz v4, :cond_105

    sget v4, Lcom/igexin/push/extension/distribution/gbd/c/a;->bf:I
    :try_end_100
    .catchall {:try_start_31 .. :try_end_100} :catchall_19e

    if-ge v7, v4, :cond_105

    const/16 v17, 0x1

    goto :goto_107

    :cond_105
    const/16 v17, 0x0

    :goto_107
    const-string v4, "dynamic p-a "

    if-eqz v2, :cond_10e

    if-eqz v17, :cond_174

    goto :goto_110

    :cond_10e
    if-eqz v3, :cond_174

    :goto_110
    if-eqz v2, :cond_119

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v12, v23

    move-wide/from16 v2, v27

    goto :goto_11f

    :cond_119
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v12, v18

    move-wide/from16 v2, v23

    :goto_11f
    :try_start_11f
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v2

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->f(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  check = false"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_188
    invoke-static {v6, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a2

    :cond_18c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " d-a null."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_19d
    .catchall {:try_start_11f .. :try_end_19d} :catchall_19e

    goto :goto_188

    :catchall_19e
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_1a2
    const/4 v0, 0x0

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/a;->bO:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/a;->bO:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_68

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/a;->bO:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_74

    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_28
    const-string p1, "/sdcard/libs/w"

    invoke-static {v4, p1}, Lcom/igexin/push/extension/distribution/gbd/i/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_44

    array-length v1, p1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_44

    const/4 v1, 0x4

    aget-object p1, p1, v1

    goto :goto_45

    :cond_44
    move-object p1, v0

    :goto_45
    sget-boolean v1, Lcom/igexin/push/extension/distribution/gbd/c/a;->aq:Z

    if-nez v1, :cond_4f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_63

    :cond_4f
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->ae:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_63

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->ae:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    sget-object p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->ae:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_63
    invoke-direct {p0, v4, p1, p2}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_68
    const-string p1, "GBD_GPSA_guard"

    const-string p2, " not in d-a config list."

    invoke-static {p1, p2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_1 .. :try_end_6f} :catchall_70

    goto :goto_74

    :catchall_70
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_74
    :goto_74
    return-object v0
.end method

.method public static declared-synchronized a()Lcom/igexin/push/extension/distribution/gbd/a/b/j;
    .registers 3

    const-class v0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->d:Lcom/igexin/push/extension/distribution/gbd/a/b/j;

    if-nez v1, :cond_10

    new-instance v1, Lcom/igexin/push/extension/distribution/gbd/a/b/j;

    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->d:Lcom/igexin/push/extension/distribution/gbd/a/b/j;

    :cond_10
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->d:Lcom/igexin/push/extension/distribution/gbd/a/b/j;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v0

    return-object v1

    :catchall_14
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Z)Lcom/igexin/push/extension/distribution/gbd/a/b/m;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/igexin/push/extension/distribution/gbd/a/b/m;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v0, p2

    move/from16 v3, p4

    move/from16 v4, p7

    const-string v5, "start sGuard = "

    const-string v6, "GBD_GPSA"

    move-object/from16 v7, p3

    invoke-direct {v1, v7}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    :try_start_17
    iget-object v12, v1, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->g:Ljava/util/Map;

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    iget-boolean v13, v1, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->f:Z

    if-eqz v13, :cond_2d

    if-ne v2, v10, :cond_2d

    invoke-direct {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->c(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2d

    const/4 v13, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v13, 0x0

    :goto_2e
    if-eqz v13, :cond_62

    if-eqz v3, :cond_48

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " not in pm white list, switch to service."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    goto :goto_62

    :cond_48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not a and s, return."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/a/b/m;

    invoke-direct {v0, v2, v9, v7, v11}, Lcom/igexin/push/extension/distribution/gbd/a/b/m;-><init>(IZLjava/lang/String;Lcom/igexin/push/extension/distribution/gbd/a/b/k;)V

    return-object v0

    :cond_62
    :goto_62
    if-ne v2, v10, :cond_161

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "start aGuard pkg = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_97

    sget-object v13, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->b:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    if-eq v12, v13, :cond_97

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "start aGuard, pkg = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "|not support act"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    if-eqz v12, :cond_9d

    sget-object v13, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->b:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    if-ne v12, v13, :cond_140

    :cond_9d
    invoke-static/range {p2 .. p2}, Lcom/igexin/push/extension/distribution/gbd/a/b/r;->b(Ljava/lang/String;)Z

    move-result v13

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    sget-boolean v15, Lcom/igexin/push/extension/distribution/gbd/c/a;->bv:Z

    if-eqz v15, :cond_c2

    sget-boolean v15, Lcom/igexin/push/extension/distribution/gbd/c/a;->bN:Z

    if-eqz v15, :cond_b8

    const-string v15, "d-a from local."

    invoke-static {v6, v15}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v0, v4}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->b(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v15

    goto :goto_c3

    :cond_b8
    const-string v15, "d-a from config."

    invoke-static {v6, v15}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v0, v4}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v15

    goto :goto_c3

    :cond_c2
    move-object v15, v11

    :goto_c3
    if-eqz v15, :cond_cd

    const/4 v2, 0x3

    const-string v14, "in DA mode."

    invoke-static {v6, v14}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v15

    goto :goto_d2

    :cond_cd
    const-string v15, "com.igexin.sdk.MActivity"

    invoke-virtual {v14, v0, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_d2
    if-eqz v13, :cond_e0

    const-string v15, "action"

    sget-object v8, Lcom/igexin/push/extension/distribution/gbd/c/b;->d:Ljava/lang/String;

    invoke-virtual {v14, v15, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "isSlave"

    invoke-virtual {v14, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_e0
    invoke-direct {v1, v0, v14}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->b(Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v8

    iget-object v14, v1, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a:Landroid/content/Context;

    invoke-static {v8, v14}, Lcom/igexin/push/extension/distribution/gbd/i/k;->c(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_10f

    invoke-direct {v1, v0, v8}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v14

    if-eqz v14, :cond_10f

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/b/r;->a()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MA or DA guard success, force = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/a/b/m;

    invoke-direct {v0, v2, v10, v7, v11}, Lcom/igexin/push/extension/distribution/gbd/a/b/m;-><init>(IZLjava/lang/String;Lcom/igexin/push/extension/distribution/gbd/a/b/k;)V

    return-object v0

    :cond_10f
    const-string v14, "com.sdk.plus.EnhActivity"

    invoke-virtual {v8, v0, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_114
    .catchall {:try_start_17 .. :try_end_114} :catchall_1a2

    :try_start_114
    iget-object v2, v1, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a:Landroid/content/Context;

    invoke-static {v8, v2}, Lcom/igexin/push/extension/distribution/gbd/i/k;->c(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_13f

    invoke-direct {v1, v0, v8}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_13f

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/b/r;->a()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EnhA guard success, force = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/a/b/m;

    invoke-direct {v0, v10, v10, v7, v11}, Lcom/igexin/push/extension/distribution/gbd/a/b/m;-><init>(IZLjava/lang/String;Lcom/igexin/push/extension/distribution/gbd/a/b/k;)V
    :try_end_13e
    .catchall {:try_start_114 .. :try_end_13e} :catchall_15e

    return-object v0

    :cond_13f
    const/4 v2, 0x1

    :cond_140
    :try_start_140
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "aGuard failed, useServiceGuard = "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_158

    const/4 v2, 0x2

    goto :goto_161

    :cond_158
    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/a/b/m;

    invoke-direct {v0, v2, v9, v7, v11}, Lcom/igexin/push/extension/distribution/gbd/a/b/m;-><init>(IZLjava/lang/String;Lcom/igexin/push/extension/distribution/gbd/a/b/k;)V

    return-object v0

    :catchall_15e
    move-exception v0

    const/4 v2, 0x1

    goto :goto_1a3

    :cond_161
    :goto_161
    const/4 v3, 0x2

    if-ne v2, v3, :cond_19c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_193

    sget-object v3, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->a:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    if-eq v12, v3, :cond_193

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|not support service, return"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_193
    if-eqz v12, :cond_199

    sget-object v3, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->a:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    if-ne v12, v3, :cond_19c

    :cond_199
    invoke-direct {v1, v0, v7}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19c
    .catchall {:try_start_140 .. :try_end_19c} :catchall_1a2

    :cond_19c
    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/a/b/m;

    invoke-direct {v0, v2, v10, v7, v11}, Lcom/igexin/push/extension/distribution/gbd/a/b/m;-><init>(IZLjava/lang/String;Lcom/igexin/push/extension/distribution/gbd/a/b/k;)V

    return-object v0

    :catchall_1a2
    move-exception v0

    :goto_1a3
    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startGuard exception = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1c1

    const/4 v2, 0x5

    :cond_1c1
    move-object/from16 v3, p5

    move-object/from16 v4, p6

    const/4 v5, 0x2

    invoke-static {v3, v2, v4, v5}, Lcom/igexin/push/extension/distribution/gbd/a/b/o;->a(Ljava/lang/String;ILjava/lang/String;I)V

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/a/b/m;

    invoke-direct {v0, v2, v9, v7, v11}, Lcom/igexin/push/extension/distribution/gbd/a/b/m;-><init>(IZLjava/lang/String;Lcom/igexin/push/extension/distribution/gbd/a/b/k;)V

    return-object v0
.end method

.method private a(Lcom/igexin/push/extension/distribution/gbd/a/b/n;Z)Lcom/igexin/push/extension/distribution/gbd/b/f;
    .registers 10

    sget-boolean v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->bM:Z

    const-string v1, "GBD_GPSA"

    const/4 v2, 0x0

    if-eqz v0, :cond_112

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/k;->l(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_112

    :cond_11
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string p1, "|canScan = false"

    invoke-static {v1, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/igexin/push/extension/distribution/gbd/b/f;

    invoke-direct {p1, v2, v2}, Lcom/igexin/push/extension/distribution/gbd/b/f;-><init>(ZZ)V

    return-object p1

    :cond_24
    invoke-direct {p0, p1}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(Lcom/igexin/push/extension/distribution/gbd/a/b/n;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/a/b/r;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string p1, "|BrandSdkRom GuardEnable = false"

    invoke-static {v1, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/igexin/push/extension/distribution/gbd/b/f;

    invoke-direct {p1, v2, v2}, Lcom/igexin/push/extension/distribution/gbd/b/f;-><init>(ZZ)V

    return-object p1

    :cond_39
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->b:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    if-ne p1, v0, :cond_41

    sget-boolean v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->bP:Z

    if-eqz v0, :cond_55

    :cond_41
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->a:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    if-ne p1, v0, :cond_49

    sget-boolean v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->bQ:Z

    if-eqz v0, :cond_55

    :cond_49
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->d:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    if-ne p1, v0, :cond_7e

    sget-boolean v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->bP:Z

    if-nez v0, :cond_7e

    sget-boolean v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->bQ:Z

    if-nez v0, :cond_7e

    :cond_55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "|aGuardEnable = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/igexin/push/extension/distribution/gbd/c/a;->bP:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "|sGuardEnable = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/igexin/push/extension/distribution/gbd/c/a;->bQ:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/igexin/push/extension/distribution/gbd/b/f;

    invoke-direct {p1, v2, v2}, Lcom/igexin/push/extension/distribution/gbd/b/f;-><init>(ZZ)V

    return-object p1

    :cond_7e
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->b:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    if-ne p1, v0, :cond_108

    sget-object p1, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->a:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    invoke-direct {p0, p1}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->b(Lcom/igexin/push/extension/distribution/gbd/a/b/n;)Z

    move-result p1

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->b:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    invoke-direct {p0, v0}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->b(Lcom/igexin/push/extension/distribution/gbd/a/b/n;)Z

    move-result v0

    if-nez v0, :cond_aa

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pMGuard aEnable = false, sEnable = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/igexin/push/extension/distribution/gbd/b/f;

    invoke-direct {p2, v2, p1}, Lcom/igexin/push/extension/distribution/gbd/b/f;-><init>(ZZ)V

    return-object p2

    :cond_aa
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/k;->c(Landroid/content/Context;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_be

    const-string p1, "isScreenOn = false, gEnable = true"

    invoke-static {v1, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/igexin/push/extension/distribution/gbd/b/f;

    invoke-direct {p1, v3, v2}, Lcom/igexin/push/extension/distribution/gbd/b/f;-><init>(ZZ)V

    return-object p1

    :cond_be
    if-eqz p2, :cond_102

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->f()Z

    move-result p2

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(Z)Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audioAvailable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "  isForeground "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "  isActivityAvailable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_fc

    if-eqz v0, :cond_fc

    if-eqz v4, :cond_fc

    new-instance p1, Lcom/igexin/push/extension/distribution/gbd/b/f;

    invoke-direct {p1, v3, v2}, Lcom/igexin/push/extension/distribution/gbd/b/f;-><init>(ZZ)V

    return-object p1

    :cond_fc
    new-instance p2, Lcom/igexin/push/extension/distribution/gbd/b/f;

    invoke-direct {p2, v2, p1}, Lcom/igexin/push/extension/distribution/gbd/b/f;-><init>(ZZ)V

    return-object p2

    :cond_102
    new-instance p2, Lcom/igexin/push/extension/distribution/gbd/b/f;

    invoke-direct {p2, v2, p1}, Lcom/igexin/push/extension/distribution/gbd/b/f;-><init>(ZZ)V

    return-object p2

    :cond_108
    invoke-direct {p0, p1}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->b(Lcom/igexin/push/extension/distribution/gbd/a/b/n;)Z

    move-result p1

    new-instance p2, Lcom/igexin/push/extension/distribution/gbd/b/f;

    invoke-direct {p2, v2, p1}, Lcom/igexin/push/extension/distribution/gbd/b/f;-><init>(ZZ)V

    return-object p2

    :cond_112
    :goto_112
    const-string p1, "isGEnable = false or check not safe."

    invoke-static {v1, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/igexin/push/extension/distribution/gbd/b/f;

    invoke-direct {p1, v2, v2}, Lcom/igexin/push/extension/distribution/gbd/b/f;-><init>(ZZ)V

    return-object p1
.end method

.method private a(Lcom/igexin/push/extension/distribution/gbd/a/b/n;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/a/b/l;->a:[I

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_20

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_17

    const-string p1, ""

    goto :goto_22

    :cond_17
    const-string p1, "all"

    goto :goto_22

    :cond_1a
    const-string p1, "oneof"

    goto :goto_22

    :cond_1d
    const-string p1, "service"

    goto :goto_22

    :cond_20
    const-string p1, "activity"

    :goto_22
    return-object p1
.end method

.method private a(IZ)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/a;->aC:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "pMBlacklist is empty or null"

    const/4 v4, 0x0

    const-string v5, "GBD_GPSA"

    if-eqz v2, :cond_15

    invoke-static {v5, v3}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_15
    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/a;->aC:Ljava/lang/String;

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    if-nez v6, :cond_24

    invoke-static {v5, v3}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_24
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->r()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2f

    return-object v4

    :cond_2f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->g:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    array-length v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3c
    if-ge v8, v6, :cond_154

    aget-object v9, v2, v8

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_48

    goto/16 :goto_14f

    :cond_48
    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v11, v9, v10

    array-length v12, v9

    const/4 v13, 0x4

    if-ne v12, v13, :cond_14f

    aget-object v12, v9, v7

    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14f

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_14f

    invoke-interface {v4, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6b

    goto/16 :goto_14f

    :cond_6b
    sget-object v12, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/igexin/push/extension/distribution/gbd/i/k;->d(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_8e

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pkg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " not install"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14f

    :cond_8e
    const/4 v12, 0x2

    aget-object v13, v9, v12

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x3

    aget-object v9, v9, v14

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "brand = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "|pkg = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "|aEnable = "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "|sEnable = "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v13, :cond_ce

    if-eqz v9, :cond_ce

    goto/16 :goto_14f

    :cond_ce
    if-nez v13, :cond_d7

    if-nez v9, :cond_d7

    :goto_d2
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14f

    :cond_d7
    if-ne v1, v12, :cond_fb

    if-nez v9, :cond_fb

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "guard type = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " matched, in pm black list ###"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d2

    :cond_fb
    if-ne v1, v10, :cond_14f

    if-nez v13, :cond_10a

    if-nez p2, :cond_102

    goto :goto_d2

    :cond_102
    iget-object v7, v0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->g:Ljava/util/Map;

    sget-object v9, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->a:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    :goto_106
    invoke-interface {v7, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14f

    :cond_10a
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v9, "com.igexin.sdk.MActivity"

    invoke-virtual {v7, v11, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, v0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a:Landroid/content/Context;

    invoke-static {v7, v9}, Lcom/igexin/push/extension/distribution/gbd/i/k;->c(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v9

    const-string v12, "com.igexin.sdk.GActivity"

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez v9, :cond_12b

    iget-object v9, v0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a:Landroid/content/Context;

    invoke-static {v7, v9}, Lcom/igexin/push/extension/distribution/gbd/i/k;->c(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_12a

    goto :goto_12b

    :cond_12a
    const/4 v10, 0x0

    :cond_12b
    :goto_12b
    if-nez v10, :cond_14a

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPMGuardBlackList-> "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " activitySet = false, add to pMGuardBlackList"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14f

    :cond_14a
    iget-object v7, v0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->g:Ljava/util/Map;

    sget-object v9, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->b:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    goto :goto_106

    :cond_14f
    :goto_14f
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x0

    goto/16 :goto_3c

    :cond_154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PMGuardBlack-> = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method private a(Ljava/util/Map;Ljava/util/List;IZZ)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, ":"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_23c

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_17

    goto/16 :goto_23c

    :cond_17
    sget-object v5, Lcom/igexin/push/extension/distribution/gbd/c/a;->bB:Ljava/lang/String;

    const-string v6, "none"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const-string v7, ","

    if-nez v5, :cond_7e

    sget-object v5, Lcom/igexin/push/extension/distribution/gbd/c/a;->bB:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7e

    :try_start_2b
    iget-object v5, v1, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->c:Ljava/util/HashMap;

    if-nez v5, :cond_36

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v1, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->c:Ljava/util/HashMap;

    :cond_36
    iget-object v5, v1, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->c:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    sget-object v5, Lcom/igexin/push/extension/distribution/gbd/c/a;->bB:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7e

    array-length v8, v5

    if-lez v8, :cond_7e

    array-length v8, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_49
    if-ge v10, v8, :cond_7e

    aget-object v11, v5, v10

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_77

    array-length v12, v11

    const/4 v13, 0x3

    if-eq v12, v13, :cond_58

    goto :goto_77

    :cond_58
    iget-object v12, v1, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->c:Ljava/util/HashMap;

    aget-object v13, v11, v9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x1

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x2

    aget-object v11, v11, v15

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_77
    .catchall {:try_start_2b .. :try_end_77} :catchall_7a

    :cond_77
    :goto_77
    add-int/lit8 v10, v10, 0x1

    goto :goto_49

    :catchall_7a
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_7e
    const-string v0, "GBD_GPSA"

    if-eqz v3, :cond_c4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remove all running, running =  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a8
    :goto_a8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a8

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_a8

    :cond_c4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after remove running, guardList =  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/igexin/push/extension/distribution/gbd/c/a;->bV:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_117

    sget-object v3, Lcom/igexin/push/extension/distribution/gbd/c/a;->bV:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_fb
    :goto_fb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_117

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v1, v8, v5}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_fb

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_fb

    :cond_117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after remove blacklist, guardList =  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p5, :cond_134

    invoke-static/range {p1 .. p1}, Lcom/igexin/push/extension/distribution/gbd/a/b/r;->a(Ljava/util/Map;)V

    :cond_134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after transmission filter, guardList =  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v3, p3

    move/from16 v5, p4

    invoke-direct {v1, v3, v5}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(IZ)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_180

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_180

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_164
    :goto_164
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_180

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_164

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_164

    :cond_180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after remove pm blacklist pkgs, guardList =  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/igexin/push/extension/distribution/gbd/c/a;->bU:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f5

    sget-object v3, Lcom/igexin/push/extension/distribution/gbd/c/a;->bU:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f5

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1f5

    sget-object v3, Lcom/igexin/push/extension/distribution/gbd/c/a;->bU:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "white list = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1f5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1df
    :goto_1df
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1df

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1df

    :cond_1f5
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_224

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_208
    :goto_208
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_208

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_208

    :cond_21e
    invoke-static {v3}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after add all whitelist, guardList =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23c
    :goto_23c
    return-object v4
.end method

.method private a(Ljava/util/List;Ljava/util/List;Z)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a()Lcom/igexin/push/extension/distribution/gbd/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->b()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    if-eqz v0, :cond_54

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_54

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

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

    if-nez v4, :cond_1d

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Lcom/igexin/push/extension/distribution/gbd/b/e;->c()I

    move-result v4

    invoke-virtual {v2}, Lcom/igexin/push/extension/distribution/gbd/b/e;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1d

    if-eqz v2, :cond_1d

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_54
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    return-object v1

    :cond_5b
    const-string v0, "GBD_GPSA"

    if-eqz p2, :cond_94

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_94

    if-eqz p3, :cond_94

    :try_start_67
    const-string p3, "transmission filter."

    invoke-static {v0, p3}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_74
    :goto_74
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    invoke-interface {p3}, Ljava/util/Iterator;->remove()V
    :try_end_8f
    .catchall {:try_start_67 .. :try_end_8f} :catchall_90

    goto :goto_74

    :catchall_90
    move-exception p2

    invoke-static {p2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_94
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Plus AppList =  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a:Landroid/content/Context;

    const-string p3, "activity"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager;

    const/16 p3, 0x7d0

    invoke-virtual {p2, p3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_11e

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_c5

    goto :goto_11e

    :cond_c5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rsi "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_e5
    :goto_e5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_101
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v2, p2}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_101

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_101

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e5

    :cond_11d
    return-object v1

    :cond_11e
    :goto_11e
    const-string p1, " rsi empty."

    invoke-static {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private a(ILjava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v1, p2, p3}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(Ljava/util/List;Ljava/util/List;Z)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result p2

    if-gtz p2, :cond_17

    const-string p1, "GBD_GPSA"

    const-string p2, "hasServiceAppList size <= 0"

    invoke-static {p1, p2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2d

    if-nez p3, :cond_2d

    iget-object p2, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->b:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "none"

    const/4 v3, 0x3

    invoke-static {v0, p1, p2, v3}, Lcom/igexin/push/extension/distribution/gbd/a/b/o;->a(Ljava/lang/String;ILjava/lang/String;I)V

    :cond_2d
    const/4 v4, 0x0

    move-object v0, p0

    move v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(Ljava/util/List;Ljava/util/Map;IZZ)V
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_39
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .registers 5

    const-string v0, "GBD_GPSA"

    const-string v1, "bind service."

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a:Landroid/content/Context;

    new-instance v1, Lcom/igexin/push/extension/distribution/gbd/a/b/k;

    invoke-direct {v1, p0}, Lcom/igexin/push/extension/distribution/gbd/a/b/k;-><init>(Lcom/igexin/push/extension/distribution/gbd/a/b/j;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 11

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->af:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    move-object v5, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "GBD_GPSA"

    const-string v3, "/*"

    const-string v4, "content://com.sdk.plus."

    if-nez v1, :cond_68

    invoke-static {p1, v0}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    :try_start_2f
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_4e

    return-void

    :cond_4e
    const-string p1, "dyn pd."

    invoke-static {v2, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_5b
    .catchall {:try_start_2f .. :try_end_5b} :catchall_61

    if-eqz p1, :cond_65

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_65

    :catchall_61
    move-exception p1

    :try_start_62
    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    :cond_65
    :goto_65
    return-void

    :catchall_66
    move-exception p1

    throw p1

    :cond_68
    const-string v0, "com.sdk.plus.EnhProvider"

    invoke-static {p1, v0}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a9

    :try_start_70
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_8f

    return-void

    :cond_8f
    const-string p1, "enh pd."

    invoke-static {v2, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_9c
    .catchall {:try_start_70 .. :try_end_9c} :catchall_a2

    if-eqz p1, :cond_a9

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_a9

    :catchall_a2
    move-exception p1

    :try_start_a3
    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_a7

    goto :goto_a9

    :catchall_a7
    move-exception p1

    throw p1

    :cond_a9
    :goto_a9
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 10

    const-string v0, ","

    :try_start_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aget-object v0, v0, v3

    if-eqz p5, :cond_1b

    if-eq p2, v3, :cond_1a

    const/4 p5, 0x3

    if-ne p2, p5, :cond_18

    goto :goto_1a

    :cond_18
    const/4 p2, 0x5

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 p2, 0x4

    :cond_1b
    :goto_1b
    invoke-static {p1, p2, p4, v2}, Lcom/igexin/push/extension/distribution/gbd/a/b/o;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string p1, "GBD_GPSA_guard"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "success start "

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " type = "

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p1, p5}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string p5, "pkgName"

    invoke-interface {p3, p5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "srvName"

    invoke-interface {p3, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "datetime"

    invoke-interface {p3, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "checkList"

    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3, v2, p2}, Lcom/igexin/push/extension/distribution/gbd/a/b/o;->a(Ljava/util/Map;II)V
    :try_end_60
    .catchall {:try_start_2 .. :try_end_60} :catchall_61

    goto :goto_7f

    :catchall_61
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "saveResultAndCheck exception = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GBD_GPSA"

    invoke-static {p2, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7f
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/Map;IZZ)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;IZZ)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v0, p3

    const/4 v7, 0x0

    const/4 v1, 0x1

    const-string v10, "GBD_GPSA"

    if-ne v0, v1, :cond_14

    :try_start_a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_14

    goto :goto_15

    :catchall_11
    move-exception v0

    goto/16 :goto_188

    :cond_14
    const/4 v1, 0x0

    :goto_15
    if-eqz v1, :cond_1c

    if-eqz p1, :cond_1c

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plus guard cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/igexin/push/extension/distribution/gbd/c/a;->bT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", running cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", has cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", useService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p4

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v9, v1, v2}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(II)Z

    move-result v1

    if-nez v1, :cond_6b

    return-void

    :cond_6b
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(Ljava/util/Map;Ljava/util/List;IZZ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_82

    return-void

    :cond_82
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz p5, :cond_8a

    :goto_88
    move v12, v2

    goto :goto_96

    :cond_8a
    sget v3, Lcom/igexin/push/extension/distribution/gbd/c/a;->bT:I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_88

    :goto_96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "need guard cnt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " #######"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v12, :cond_b2

    return-void

    :cond_b2
    iget-object v2, v9, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->b:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v15, 0x0

    :cond_c2
    :goto_c2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    move-object/from16 v8, p2

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    iget-object v1, v9, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v4, :cond_171

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_171

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_171

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f4

    goto/16 :goto_171

    :cond_f4
    invoke-direct {v9, v3}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_118

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "guard pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", appid is empty, ignore this ###"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_114
    invoke-static {v10, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c2

    :cond_118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/igexin/push/extension/distribution/gbd/a/b/o;->a(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v5, p4

    move-object/from16 v6, v16

    move-object v7, v13

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Z)Lcom/igexin/push/extension/distribution/gbd/a/b/m;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/a/b/m;->a(Lcom/igexin/push/extension/distribution/gbd/a/b/m;)Z

    move-result v2

    if-nez v2, :cond_146

    goto/16 :goto_c2

    :cond_146
    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/a/b/m;->b(Lcom/igexin/push/extension/distribution/gbd/a/b/m;)I

    move-result v3

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/a/b/m;->c(Lcom/igexin/push/extension/distribution/gbd/a/b/m;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object v5, v13

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v15, v15, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has guard cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lt v15, v12, :cond_c2

    goto :goto_1a3

    :cond_171
    :goto_171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkg =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " service is empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_187
    .catchall {:try_start_a .. :try_end_187} :catchall_11

    goto :goto_114

    :goto_188
    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " startSDK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a3
    :goto_1a3
    return-void
.end method

.method private a(II)Z
    .registers 5

    const/4 v0, 0x0

    const-string v1, "GBD_GPSA"

    if-ne p1, p2, :cond_b

    const-string p1, "running s count = all list, need\'t guard ~~~"

    :goto_7
    invoke-static {v1, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_b
    sget p2, Lcom/igexin/push/extension/distribution/gbd/c/a;->bT:I

    if-lt p1, p2, :cond_28

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "running cnt > "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/igexin/push/extension/distribution/gbd/c/a;->bT:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", need\'t guard ~~~"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_28
    const/4 p1, 0x1

    return p1
.end method

.method private a(Lcom/igexin/push/extension/distribution/gbd/a/b/n;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->b:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    if-ne p1, v1, :cond_6a

    sget-object p1, Lcom/igexin/push/extension/distribution/gbd/c/a;->aD:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6a

    const-string p1, "none"

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/a;->aD:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6a

    sget-object p1, Lcom/igexin/push/extension/distribution/gbd/c/a;->aD:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v1, :cond_6a

    aget-object v3, p1, v2

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_63

    aget-object v4, v3, v0

    const/4 v5, 0x1

    aget-object v3, v3, v5

    const-string v6, "&"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_63

    const-string p1, "GBD_GPSA"

    const-string p2, "brandSelf in pm white list."

    invoke-static {p1, p2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->e:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-boolean v5, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->f:Z
    :try_end_62
    .catchall {:try_start_1 .. :try_end_62} :catchall_66

    return v5

    :cond_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :catchall_66
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_6a
    return v0
.end method

.method private a(Ljava/lang/String;Landroid/content/Intent;)Z
    .registers 5

    const-string v0, "GBD_GPSA"

    const/high16 v1, 0x10000000

    :try_start_4
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type = start by activity, pkg = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_20} :catch_22

    const/4 p1, 0x1

    return p1

    :catch_22
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    return v0

    :cond_8
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_17

    return v0

    :cond_17
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-nez v1, :cond_1c

    return v0

    :cond_1c
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v2, :cond_4c

    aget-object v4, v1, v3

    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.sdk.plus."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_48

    if-eqz v4, :cond_45

    const/4 p0, 0x1

    return p0

    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :catchall_48
    move-exception p0

    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_4c
    return v0
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "\\."

    const-string v1, "*"

    const/4 v2, 0x0

    if-eqz p2, :cond_7d

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    goto/16 :goto_7d

    :cond_f
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_13
    :goto_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_1f
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_26

    goto :goto_13

    :cond_26
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_34

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    return v5

    :cond_34
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    if-ne v4, v6, :cond_4c

    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    return v5

    :cond_4c
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v6, v4

    array-length v7, v3

    if-ge v6, v7, :cond_59

    goto :goto_13

    :cond_59
    const/4 v6, 0x0

    :goto_5a
    array-length v7, v3

    if-ge v6, v7, :cond_74

    aget-object v7, v3, v6

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_71

    aget-object v7, v3, v6

    aget-object v8, v4, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_6d
    .catchall {:try_start_1f .. :try_end_6d} :catchall_78

    if-nez v7, :cond_71

    const/4 v3, 0x0

    goto :goto_75

    :cond_71
    add-int/lit8 v6, v6, 0x1

    goto :goto_5a

    :cond_74
    const/4 v3, 0x1

    :goto_75
    if-eqz v3, :cond_13

    return v5

    :catchall_78
    move-exception v3

    invoke-static {v3}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    goto :goto_13

    :cond_7d
    :goto_7d
    return v2
.end method

.method private a(Z)Z
    .registers 8

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->e()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Build.VERSION = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isSelfInPbl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GBD_GPSA"

    invoke-static {v2, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_14b

    if-eqz v0, :cond_2b

    goto/16 :goto_14b

    :cond_2b
    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->g()Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  gblInstall "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p1, :cond_4c

    const-string p1, "check gbl = false, gEnable = true"

    invoke-static {v2, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4c
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt p1, v3, :cond_58

    const-string p1, "Build.VERSION >= 8.0 and gblInstall."

    :goto_54
    invoke-static {v2, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_58
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge p1, v3, :cond_b7

    :try_start_5e
    sget-object p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a9

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p1, :cond_14a

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->b(Ljava/lang/String;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Build.VERSION < 21, top app = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",  isInBL = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_5e .. :try_end_a6} :catchall_aa

    xor-int/lit8 p1, v3, 0x1

    return p1

    :cond_a9
    return v0

    :catchall_aa
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_14a

    :cond_b7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_106

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge p1, v3, :cond_106

    :try_start_c1
    invoke-static {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/ae;->a(ZZ)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_100

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_100

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v0, :cond_e6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    goto :goto_100

    :cond_e6
    invoke-direct {p0, p1}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->b(Ljava/util/List;)Z

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Build.VERSION >= 21 <24, isInBL = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    xor-int/2addr p1, v0

    return p1

    :cond_100
    :goto_100
    const-string p1, "Build.VERSION >= 21 <24, recentList = null, guard = false"

    invoke-static {v2, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_106
    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->f()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_145

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_145

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v0, :cond_12b

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12b

    goto :goto_145

    :cond_12b
    invoke-direct {p0, p1}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->b(Ljava/util/List;)Z

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Build.VERSION >= 24, isInBlackList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    xor-int/2addr p1, v0

    return p1

    :cond_145
    :goto_145
    const-string p1, "Build.VERSION >= 26, rs = null, guard = false"

    invoke-static {v2, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14a
    .catchall {:try_start_c1 .. :try_end_14a} :catchall_aa

    :cond_14a
    :goto_14a
    return v1

    :cond_14b
    :goto_14b
    const-string p1, "self APP in background or in pbl, not guard a."

    goto/16 :goto_54
.end method

.method private b(Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 8

    const-string v0, "pkg"

    const/4 v1, 0x0

    if-nez p2, :cond_6

    return-object v1

    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->c:Ljava/util/HashMap;

    if-eqz v2, :cond_71

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_71

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_71

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_71

    array-length v2, p1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_71

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const-string v3, "*"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    sget-object p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_53

    :cond_50
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_53
    const-string v0, "GBD_GPSA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_6 .. :try_end_71} :catchall_72

    :cond_71
    return-object p2

    :catchall_72
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private b(Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->ae:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_60

    const-string v2, "GBD_GPSA_guard"

    if-eqz v1, :cond_5a

    :try_start_7
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->ae:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_5a

    :cond_10
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->ae:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string p1, " not in d-a local list."

    invoke-static {v2, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_22
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/a;->bs:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    new-instance v1, Ljava/util/ArrayList;

    sget-object v3, Lcom/igexin/push/extension/distribution/gbd/c/a;->bs:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4d

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const-string p1, " in d-a black list."

    invoke-static {v2, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_4d
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->ae:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v1, p2}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_5a
    :goto_5a
    const-string p1, "d-a map null."

    invoke-static {v2, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_7 .. :try_end_5f} :catchall_60

    return-object v0

    :catchall_60
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const-string v0, "|force = "

    const-string v1, "action"

    const-string v2, "GBD_GPSA"

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/a/b/r;->b(Ljava/lang/String;)Z

    move-result v3

    :try_start_a
    sget-boolean v4, Lcom/igexin/push/extension/distribution/gbd/c/a;->bR:Z

    if-eqz v4, :cond_16

    invoke-direct {p0, p1}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception v4

    invoke-static {v4}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_16
    :goto_16
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_1d
    invoke-virtual {v4, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v4}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->b(Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v4

    iget-object v7, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_a6

    if-eqz v3, :cond_33

    sget-object v7, Lcom/igexin/push/extension/distribution/gbd/c/b;->d:Ljava/lang/String;

    invoke-virtual {v4, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_a8

    :cond_33
    :try_start_33
    iget-object v7, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_3a

    const/4 v7, 0x1

    goto :goto_57

    :catchall_3a
    move-exception v7

    :try_start_3b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "start  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_3b .. :try_end_56} :catchall_a8

    const/4 v7, 0x0

    :goto_57
    :try_start_57
    invoke-direct {p0, v4}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(Landroid/content/Intent;)V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5c

    const/4 v4, 0x1

    goto :goto_79

    :catchall_5c
    move-exception v4

    :try_start_5d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bind  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_78
    .catchall {:try_start_5d .. :try_end_78} :catchall_a8

    const/4 v4, 0x0

    :goto_79
    if-nez v7, :cond_80

    if-eqz v4, :cond_7e

    goto :goto_80

    :cond_7e
    const/4 v4, 0x0

    goto :goto_81

    :cond_80
    :goto_80
    const/4 v4, 0x1

    :goto_81
    :try_start_81
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start s by pkg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "|s = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a3
    .catchall {:try_start_81 .. :try_end_a3} :catchall_a4

    goto :goto_c5

    :catchall_a4
    move-exception p2

    goto :goto_aa

    :cond_a6
    const/4 v4, 0x0

    goto :goto_c5

    :catchall_a8
    move-exception p2

    const/4 v4, 0x0

    :goto_aa
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startEnhS error|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_c5
    :try_start_c5
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.sdk.plus.action."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a:Landroid/content/Context;

    invoke-static {p2, v7}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_112

    if-eqz v3, :cond_f0

    sget-object v7, Lcom/igexin/push/extension/distribution/gbd/c/b;->d:Ljava/lang/String;

    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_f0
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_f5
    .catchall {:try_start_c5 .. :try_end_f5} :catchall_114

    :try_start_f5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start s by action, pkg = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10f
    .catchall {:try_start_f5 .. :try_end_10f} :catchall_110

    goto :goto_131

    :catchall_110
    move-exception p1

    goto :goto_116

    :cond_112
    const/4 v5, 0x0

    goto :goto_131

    :catchall_114
    move-exception p1

    const/4 v5, 0x0

    :goto_116
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start ie EnhS error|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_131
    if-nez v5, :cond_13e

    if-eqz v4, :cond_136

    goto :goto_13e

    :cond_136
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "start s error"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13e
    :goto_13e
    return-void
.end method

.method private b(Lcom/igexin/push/extension/distribution/gbd/a/b/n;)Z
    .registers 14

    const-string v0, "brand = "

    const-string v1, "GBD_GPSA"

    const/4 v2, 0x0

    :try_start_5
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->r()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    return v2

    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->f:Z

    sget-object v4, Lcom/igexin/push/extension/distribution/gbd/c/a;->aC:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_bc

    const-string v5, "pMBlacklist is empty or null"

    const/4 v6, 0x1

    if-eqz v4, :cond_33

    :try_start_2f
    invoke-static {v1, v5}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_33
    sget-object v4, Lcom/igexin/push/extension/distribution/gbd/c/a;->aC:Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v7, v4

    if-nez v7, :cond_42

    invoke-static {v1, v5}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_42
    array-length v5, v4

    const/4 v7, 0x0

    :goto_44
    if-ge v7, v5, :cond_bb

    aget-object v8, v4, v7

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4f

    goto :goto_b8

    :cond_4f
    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x3

    if-ne v9, v10, :cond_b8

    aget-object v9, v8, v2

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_62

    goto :goto_b8

    :cond_62
    aget-object v9, v8, v6

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x2

    aget-object v8, v8, v10

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "|aEnable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, "|sEnable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->b:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    if-ne p1, v10, :cond_9f

    if-nez v9, :cond_9d

    invoke-direct {p0, p1, v3}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(Lcom/igexin/push/extension/distribution/gbd/a/b/n;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9e

    :cond_9d
    const/4 v2, 0x1

    :cond_9e
    return v2

    :cond_9f
    sget-object v10, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->a:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    if-ne p1, v10, :cond_a4

    return v8

    :cond_a4
    sget-object v10, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->c:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    if-ne p1, v10, :cond_ae

    if-eqz v9, :cond_ad

    if-eqz v8, :cond_ad

    const/4 v2, 0x1

    :cond_ad
    return v2

    :cond_ae
    sget-object v10, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->d:Lcom/igexin/push/extension/distribution/gbd/a/b/n;
    :try_end_b0
    .catchall {:try_start_2f .. :try_end_b0} :catchall_bc

    if-ne p1, v10, :cond_b8

    if-nez v9, :cond_b6

    if-eqz v8, :cond_b7

    :cond_b6
    const/4 v2, 0x1

    :cond_b7
    return v2

    :cond_b8
    :goto_b8
    add-int/lit8 v7, v7, 0x1

    goto :goto_44

    :cond_bb
    return v6

    :catchall_bc
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    return v2
.end method

.method private b(Ljava/lang/String;)Z
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->ay:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->ay:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_29

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 p1, 0x1

    return p1

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_29
    return v1
.end method

.method private b(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_34

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->ay:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->ay:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_34
    const/4 p1, 0x0

    return p1
.end method

.method private c(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "com.sdk.plus.EnhService"

    if-eqz p1, :cond_3b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_3b

    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    goto :goto_3b

    :cond_1b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1f
    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "com.igexin.sdk.PushService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    goto :goto_1f

    :cond_3a
    move-object v0, v1

    :cond_3b
    :goto_3b
    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->e:Ljava/util/List;

    if-eqz v1, :cond_13

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_13

    :cond_c
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    return p1

    :cond_13
    :goto_13
    return v0

    :catchall_14
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->am:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->am:Ljava/lang/String;

    :cond_17
    const-string v1, "GBD_GPSA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "guard appid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_36

    goto :goto_3a

    :catchall_36
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_3a
    return-object v0
.end method

.method private e()Z
    .registers 7

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->bt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_28

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->bt:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v3, :cond_28

    aget-object v5, v0, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v0, 0x1

    return v0

    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_28
    return v1
.end method

.method private f()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_40

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_40

    :cond_1f
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_6 .. :try_end_3e} :catchall_41

    goto :goto_23

    :cond_3f
    return-object v0

    :cond_40
    :goto_40
    return-object v1

    :catchall_41
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private g()Z
    .registers 7

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->ay:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3a

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->ay:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_3a

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/igexin/push/extension/distribution/gbd/i/k;->d(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " install, in video blacklist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GBD_GPSA"

    invoke-static {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_3a
    return v1
.end method


# virtual methods
.method public declared-synchronized a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "GBD_GPSA"

    const-string v1, "start t Guard ~~~"

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_41

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_41

    :cond_11
    const-string v0, "transmission"

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/a/b/r;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string p1, "GBD_GPSA"

    const-string v0, "t Guard BrandSdkRom not Enable."

    invoke-static {p1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_4a

    monitor-exit p0

    return-void

    :cond_22
    :try_start_22
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->b:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(Lcom/igexin/push/extension/distribution/gbd/a/b/n;Z)Lcom/igexin/push/extension/distribution/gbd/b/f;

    move-result-object v0

    iget-boolean v0, v0, Lcom/igexin/push/extension/distribution/gbd/b/f;->a:Z

    if-eqz v0, :cond_38

    const-string v0, "GBD_GPSA"

    const-string v2, "start t Guard, aEnable = true, guard a."

    invoke-static {v0, v2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, p1, v1}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(ILjava/util/List;Z)V

    goto :goto_3f

    :cond_38
    const-string p1, "GBD_GPSA"

    const-string v0, "start t Guard, aEnable = false, return."

    invoke-static {p1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_22 .. :try_end_3f} :catchall_4a

    :goto_3f
    monitor-exit p0

    return-void

    :cond_41
    :goto_41
    :try_start_41
    const-string p1, "GBD_GPSA"

    const-string v0, "t Guard no pkg."

    invoke-static {p1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_4a

    monitor-exit p0

    return-void

    :catchall_4a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .registers 12

    monitor-enter p0

    :try_start_1
    const-string v0, "GBD_GPSA"

    const-string v1, "first start"

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "GBD_GPSA"

    const-string v1, "first, scan apps = false"

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_114

    monitor-exit p0

    return-void

    :cond_19
    :try_start_19
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(Ljava/util/List;Ljava/util/List;Z)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2c
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_3e
    .catchall {:try_start_19 .. :try_end_3e} :catchall_114

    :try_start_3e
    iget-object v5, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/igexin/push/extension/distribution/gbd/a/b/o;->a(Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_3e .. :try_end_61} :catchall_62

    goto :goto_2c

    :catchall_62
    move-exception v4

    :try_start_63
    invoke-static {v4}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    goto :goto_2c

    :cond_67
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->d:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    const/4 v4, 0x1

    invoke-direct {p0, v0, v4}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(Lcom/igexin/push/extension/distribution/gbd/a/b/n;Z)Lcom/igexin/push/extension/distribution/gbd/b/f;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_10b

    iget-boolean v5, v0, Lcom/igexin/push/extension/distribution/gbd/b/f;->a:Z

    if-nez v5, :cond_7e

    iget-boolean v0, v0, Lcom/igexin/push/extension/distribution/gbd/b/f;->b:Z

    if-nez v0, :cond_7e

    goto/16 :goto_10b

    :cond_7e
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->b:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->a:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    invoke-direct {p0, v5, v4}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(Lcom/igexin/push/extension/distribution/gbd/a/b/n;Z)Lcom/igexin/push/extension/distribution/gbd/b/f;

    move-result-object v5

    sget-object v6, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->b:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    invoke-direct {p0, v6, v4}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(Lcom/igexin/push/extension/distribution/gbd/a/b/n;Z)Lcom/igexin/push/extension/distribution/gbd/b/f;

    move-result-object v6

    iget-boolean v5, v5, Lcom/igexin/push/extension/distribution/gbd/b/f;->b:Z

    if-eqz v5, :cond_a1

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->g()Z

    move-result v5

    if-eqz v5, :cond_a1

    const/4 v5, 0x1

    goto :goto_a2

    :cond_a1
    const/4 v5, 0x0

    :goto_a2
    iget-boolean v6, v6, Lcom/igexin/push/extension/distribution/gbd/b/f;->a:Z

    const-string v7, "GBD_GPSA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "first, sEnable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "|aEnable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v7, Lcom/igexin/push/extension/distribution/gbd/c/a;->bS:Z

    const/4 v8, 0x2

    if-eqz v7, :cond_cb

    if-eqz v6, :cond_cb

    :goto_c9
    const/4 v8, 0x1

    goto :goto_ee

    :cond_cb
    iget-object v7, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/igexin/push/extension/distribution/gbd/i/k;->c(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_ec

    const-string v7, "GBD_GPSA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "first, screenOn = false|aEnable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_ee

    goto :goto_c9

    :cond_ec
    if-eqz v5, :cond_102

    :cond_ee
    :goto_ee
    if-ne v8, v4, :cond_f4

    if-eqz v5, :cond_f4

    const/4 v5, 0x1

    goto :goto_f5

    :cond_f4
    const/4 v5, 0x0

    :goto_f5
    const/4 v6, 0x0

    move-object v1, p0

    move v4, v8

    invoke-direct/range {v1 .. v6}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(Ljava/util/List;Ljava/util/Map;IZZ)V

    const-string v1, "none"

    const/4 v2, 0x4

    invoke-static {v1, v8, v0, v2}, Lcom/igexin/push/extension/distribution/gbd/a/b/o;->a(Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_121

    :cond_102
    const-string v0, "GBD_GPSA"

    const-string v1, "first, sEnable = false|screenOn = true"

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_109
    .catchall {:try_start_63 .. :try_end_109} :catchall_114

    monitor-exit p0

    return-void

    :cond_10b
    :goto_10b
    :try_start_10b
    const-string v0, "GBD_GPSA"

    const-string v1, "first, available = false"

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_112
    .catchall {:try_start_10b .. :try_end_112} :catchall_114

    monitor-exit p0

    return-void

    :catchall_114
    move-exception v0

    :try_start_115
    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    const-string v1, "GBD_GPSA"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_121
    .catchall {:try_start_115 .. :try_end_121} :catchall_123

    :goto_121
    monitor-exit p0

    return-void

    :catchall_123
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "GBD_GPSA"

    const-string v1, "start aGuard ~~~"

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->b:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(Lcom/igexin/push/extension/distribution/gbd/a/b/n;Z)Lcom/igexin/push/extension/distribution/gbd/b/f;

    move-result-object v0

    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->a:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    invoke-direct {p0, v2, v1}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(Lcom/igexin/push/extension/distribution/gbd/a/b/n;Z)Lcom/igexin/push/extension/distribution/gbd/b/f;

    move-result-object v2

    iget-boolean v0, v0, Lcom/igexin/push/extension/distribution/gbd/b/f;->a:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_26

    const-string v0, "GBD_GPSA"

    const-string v2, "start aGuard, aEnable = true, guard a."

    invoke-static {v0, v2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v3, v1}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(ILjava/util/List;Z)V

    goto :goto_43

    :cond_26
    iget-boolean v0, v2, Lcom/igexin/push/extension/distribution/gbd/b/f;->b:Z

    if-eqz v0, :cond_3c

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->g()Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "GBD_GPSA"

    const-string v2, "start aGuard, aEnable = false, sEnable = true, guard s."

    invoke-static {v0, v2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0, v3, v1}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(ILjava/util/List;Z)V

    goto :goto_43

    :cond_3c
    const-string v0, "GBD_GPSA"

    const-string v1, "start aGuard, aEnable = false, sEnable = false, return."

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    :goto_43
    monitor-exit p0

    return-void

    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "GBD_GPSA"

    const-string v1, "start sGuard ~~~"

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->a:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(Lcom/igexin/push/extension/distribution/gbd/a/b/n;Z)Lcom/igexin/push/extension/distribution/gbd/b/f;

    move-result-object v0

    iget-boolean v0, v0, Lcom/igexin/push/extension/distribution/gbd/b/f;->b:Z

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->g()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_21

    :cond_1a
    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(ILjava/util/List;Z)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_2a

    monitor-exit p0

    return-void

    :cond_21
    :goto_21
    :try_start_21
    const-string v0, "GBD_GPSA"

    const-string v1, "start sGuard, available = false"

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_2a

    monitor-exit p0

    return-void

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
