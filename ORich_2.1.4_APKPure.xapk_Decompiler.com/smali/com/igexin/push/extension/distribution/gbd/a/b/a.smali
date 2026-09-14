###### Class com.igexin.push.extension.distribution.gbd.a.b.a (com.igexin.push.extension.distribution.gbd.a.b.a)
.class public Lcom/igexin/push/extension/distribution/gbd/a/b/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/igexin/push/extension/distribution/gbd/b/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/igexin/push/extension/distribution/gbd/a/b/b;)V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/a/b/a;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/igexin/push/extension/distribution/gbd/a/b/a;
    .registers 2

    const-class v0, Lcom/igexin/push/extension/distribution/gbd/a/b/a;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/b/c;->a()Lcom/igexin/push/extension/distribution/gbd/a/b/a;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "GBD_GGTH"

    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x81

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const-string v3, "com.sdk.plus.EnhActivityTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "use local addition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_63

    array-length p1, v2

    if-lez p1, :cond_63

    array-length p1, v2

    const/4 v4, 0x0

    :goto_32
    if-ge v4, p1, :cond_63

    aget-object v5, v2, v4

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    iget v6, v5, Landroid/content/pm/ActivityInfo;->theme:I

    const v7, 0x1030010

    if-ne v6, v7, :cond_60

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "match affinity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_2 .. :try_end_60} :catchall_64

    :cond_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    :cond_63
    return-object v1

    :catchall_64
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6f

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6f

    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_29

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_d

    :cond_29
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_d

    array-length v2, v1

    if-nez v2, :cond_31

    goto :goto_d

    :cond_31
    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/extension/distribution/gbd/b/e;

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/gbd/b/e;->d()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v4, 0x0

    :goto_50
    if-ge v4, v3, :cond_5c

    aget-object v5, v1, v4

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_50

    :cond_5c
    if-eqz v0, :cond_d

    invoke-interface {v0, v2}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z
    :try_end_61
    .catchall {:try_start_2 .. :try_end_61} :catchall_62

    goto :goto_d

    :catchall_62
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GBD_GGTH"

    invoke-static {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6f
    :goto_6f
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_f

    if-eqz p0, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0

    :catch_f
    move-exception p0

    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "com.igexin.sdk.PushService"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "com.igexin.sdk.coordinator.GexinMsgService"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "com.igexin.sdk.coordinator.SdkMsgService"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method private d()V
    .registers 17

    move-object/from16 v1, p0

    const-string v0, "&"

    :try_start_4
    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/c;->ar:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    return-void

    :cond_d
    new-instance v2, Lorg/json/JSONArray;

    sget-object v3, Lcom/igexin/push/extension/distribution/gbd/c/c;->ar:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_169

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v3, :cond_169

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "GBD_GGTH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "from s, guard json = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_161

    const-string v7, "pkgName"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "userActivity"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const-string v9, "userService"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    sget-boolean v9, Lcom/igexin/push/extension/distribution/gbd/c/a;->aq:Z

    if-nez v9, :cond_63

    sget-object v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->ae:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_61

    goto :goto_63

    :cond_61
    const/4 v9, 0x0

    goto :goto_64

    :cond_63
    :goto_63
    const/4 v9, 0x1

    :goto_64
    sget-object v11, Lcom/igexin/push/extension/distribution/gbd/c/a;->ar:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8c

    const-string v11, "none"

    sget-object v12, Lcom/igexin/push/extension/distribution/gbd/c/a;->ar:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8c

    sget-object v11, Lcom/igexin/push/extension/distribution/gbd/c/a;->ar:Ljava/lang/String;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_8c

    invoke-interface {v11, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8c

    const/4 v11, 0x1

    goto :goto_8d

    :cond_8c
    const/4 v11, 0x0

    :goto_8d
    array-length v12, v8

    if-lez v12, :cond_10d

    aget-object v12, v8, v4

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_10d

    if-eqz v9, :cond_10d

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    array-length v12, v8

    const/4 v13, 0x0

    :goto_a1
    if-ge v13, v12, :cond_bb

    aget-object v14, v8, v13

    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v15, v7, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v10, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-static {v15, v10}, Lcom/igexin/push/extension/distribution/gbd/i/k;->c(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_b8

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b8
    add-int/lit8 v13, v13, 0x1

    goto :goto_a1

    :cond_bb
    sget-object v8, Lcom/igexin/push/extension/distribution/gbd/c/c;->ae:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d2

    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d2

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_eb

    new-instance v10, Ljava/util/Random;

    invoke-direct {v10}, Ljava/util/Random;-><init>()V

    invoke-virtual {v10, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    sget-object v10, Lcom/igexin/push/extension/distribution/gbd/c/c;->ae:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    :goto_e7
    invoke-virtual {v10, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10d

    :cond_eb
    if-eqz v11, :cond_10d

    invoke-direct {v1, v7}, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_10d

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_10d

    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    sget-object v10, Lcom/igexin/push/extension/distribution/gbd/c/c;->ae:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    goto :goto_e7

    :cond_10d
    :goto_10d
    array-length v8, v6

    if-lez v8, :cond_161

    aget-object v8, v6, v4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_161

    iget-object v8, v1, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_143

    new-instance v8, Lcom/igexin/push/extension/distribution/gbd/b/e;

    invoke-direct {v8}, Lcom/igexin/push/extension/distribution/gbd/b/e;-><init>()V

    invoke-static {v7}, Lcom/igexin/push/extension/distribution/gbd/i/k;->f(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12d

    const/4 v10, 0x1

    goto :goto_12e

    :cond_12d
    const/4 v10, 0x0

    :goto_12e
    invoke-virtual {v8, v10}, Lcom/igexin/push/extension/distribution/gbd/b/e;->a(I)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8, v9}, Lcom/igexin/push/extension/distribution/gbd/b/e;->a(Ljava/util/List;)V

    iget-object v6, v1, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_161

    :cond_143
    iget-object v8, v1, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/igexin/push/extension/distribution/gbd/b/e;

    invoke-virtual {v7}, Lcom/igexin/push/extension/distribution/gbd/b/e;->d()Ljava/util/List;

    move-result-object v7

    array-length v8, v6

    const/4 v9, 0x0

    :goto_151
    if-ge v9, v8, :cond_161

    aget-object v10, v6, v9

    invoke-interface {v7, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_15e

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15e
    .catchall {:try_start_4 .. :try_end_15e} :catchall_165

    :cond_15e
    add-int/lit8 v9, v9, 0x1

    goto :goto_151

    :cond_161
    :goto_161
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1c

    :catchall_165
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_169
    return-void
.end method

.method private static d(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "com.sdk.plus.EnhService"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private e()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    sget-boolean v1, Lcom/igexin/push/extension/distribution/gbd/c/a;->as:Z

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->G()Ljava/util/List;

    move-result-object v0

    goto :goto_15

    :cond_a
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    :goto_15
    if-eqz v0, :cond_a2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    goto/16 :goto_a2

    :cond_1f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_3f

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_23

    :cond_3f
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_23

    array-length v5, v3

    if-nez v5, :cond_47

    goto :goto_23

    :cond_47
    array-length v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4a
    if-ge v7, v5, :cond_23

    aget-object v8, v3, v7

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v9}, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->c(Ljava/lang/String;)Z

    move-result v9

    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v10}, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->d(Ljava/lang/String;)Z

    move-result v10

    if-nez v9, :cond_62

    if-eqz v10, :cond_5f

    goto :goto_62

    :cond_5f
    add-int/lit8 v7, v7, 0x1

    goto :goto_4a

    :cond_62
    :goto_62
    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_86

    new-instance v3, Lcom/igexin/push/extension/distribution/gbd/b/e;

    invoke-direct {v3}, Lcom/igexin/push/extension/distribution/gbd/b/e;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v5}, Lcom/igexin/push/extension/distribution/gbd/b/e;->a(Ljava/util/List;)V

    if-eqz v9, :cond_7c

    const/4 v4, 0x0

    :cond_7c
    invoke-virtual {v3, v4}, Lcom/igexin/push/extension/distribution/gbd/b/e;->a(I)V

    iget-object v4, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_86
    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igexin/push/extension/distribution/gbd/b/e;

    invoke-virtual {v2}, Lcom/igexin/push/extension/distribution/gbd/b/e;->d()Ljava/util/List;

    move-result-object v2

    iget-object v3, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a1
    .catchall {:try_start_1 .. :try_end_a1} :catchall_a3

    goto :goto_23

    :cond_a2
    :goto_a2
    return-object v0

    :catchall_a3
    move-exception v1

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GBD_GGTH"

    invoke-static {v2, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b0
    return-object v0
.end method

.method private f()V
    .registers 9

    const-string v0, "GBD_GGTH"

    :try_start_2
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/h;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/gbd/e/a/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b5

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_aa

    if-eqz v3, :cond_b5

    :try_start_1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ".gtyl"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_32

    goto :goto_19

    :cond_32
    iget-object v5, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_74

    invoke-static {v3}, Lcom/igexin/push/extension/distribution/gbd/i/k;->f(Ljava/lang/String;)Z

    move-result v5

    new-instance v6, Lcom/igexin/push/extension/distribution/gbd/b/e;

    invoke-direct {v6}, Lcom/igexin/push/extension/distribution/gbd/b/e;-><init>()V

    if-eqz v5, :cond_47

    const/4 v7, 0x1

    goto :goto_48

    :cond_47
    const/4 v7, 0x0

    :goto_48
    invoke-virtual {v6, v7}, Lcom/igexin/push/extension/distribution/gbd/b/e;->a(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v7}, Lcom/igexin/push/extension/distribution/gbd/b/e;->a(Ljava/util/List;)V

    iget-object v7, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v7, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sp add pkg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", isPlus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/igexin/push/extension/distribution/gbd/b/e;

    invoke-virtual {v3}, Lcom/igexin/push/extension/distribution/gbd/b/e;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8e
    :goto_8e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8e

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a3
    .catchall {:try_start_1f .. :try_end_a3} :catchall_a4

    goto :goto_8e

    :catchall_a4
    move-exception v3

    :try_start_a5
    invoke-static {v3}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_aa

    goto/16 :goto_19

    :catchall_aa
    move-exception v1

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b5
    return-void
.end method

.method private g()V
    .registers 17

    move-object/from16 v1, p0

    const-string v2, "com.sdk.plus.EnhService"

    new-instance v0, Ljava/io/File;

    const-string v3, "/sdcard/libs/w"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_12

    return-void

    :cond_12
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_124

    array-length v0, v4

    if-nez v0, :cond_1d

    goto/16 :goto_124

    :cond_1d
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->af:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_28

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->af:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_28
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->af:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_30
    if-ge v7, v5, :cond_124

    aget-object v0, v4, v7

    :try_start_34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11f

    const-string v8, ".db"

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11f

    const-string v8, "."

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11f

    sget-object v8, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/igexin/push/extension/distribution/gbd/i/k;->d(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_5c

    goto/16 :goto_11f

    :cond_5c
    iget-object v8, v1, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_7a

    new-instance v8, Lcom/igexin/push/extension/distribution/gbd/b/e;

    invoke-direct {v8}, Lcom/igexin/push/extension/distribution/gbd/b/e;-><init>()V

    invoke-virtual {v8, v9}, Lcom/igexin/push/extension/distribution/gbd/b/e;->a(I)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v10}, Lcom/igexin/push/extension/distribution/gbd/b/e;->a(Ljava/util/List;)V

    iget-object v10, v1, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v10, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7a
    iget-object v8, v1, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/igexin/push/extension/distribution/gbd/b/e;

    invoke-virtual {v8}, Lcom/igexin/push/extension/distribution/gbd/b/e;->d()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8f

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8f
    invoke-static {v0, v3}, Lcom/igexin/push/extension/distribution/gbd/i/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_11f

    const-string v12, "\\|"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_11f

    array-length v12, v11

    const/4 v13, 0x5

    if-ne v12, v13, :cond_11f

    aget-object v12, v11, v6

    aget-object v9, v11, v9

    const/4 v13, 0x2

    aget-object v13, v11, v13

    const/4 v14, 0x3

    aget-object v14, v11, v14

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_cb

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_cb

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v6, 0x20

    if-ne v15, v6, :cond_cb

    invoke-virtual {v8, v12}, Lcom/igexin/push/extension/distribution/gbd/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/igexin/push/extension/distribution/gbd/b/e;->b(Ljava/lang/String;)V

    sput-object v12, Lcom/igexin/push/extension/distribution/gbd/c/c;->am:Ljava/lang/String;

    :cond_cb
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_cf
    .catchall {:try_start_34 .. :try_end_cf} :catchall_112

    const-string v8, "null"

    if-nez v6, :cond_dc

    :try_start_d3
    invoke-virtual {v8, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_dc

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_dc
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_ed

    invoke-virtual {v8, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_ed

    sget-object v6, Lcom/igexin/push/extension/distribution/gbd/c/c;->af:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v0, v13}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ed
    const/4 v6, 0x4

    aget-object v6, v11, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_11f

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_11f

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v8, v0, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v9, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/igexin/push/extension/distribution/gbd/i/k;->c(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_11f

    sget-object v8, Lcom/igexin/push/extension/distribution/gbd/c/c;->ae:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_111
    .catchall {:try_start_d3 .. :try_end_111} :catchall_112

    goto :goto_11f

    :catchall_112
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v6, "GBD_GGTH"

    invoke-static {v6, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11f
    :goto_11f
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto/16 :goto_30

    :cond_124
    :goto_124
    return-void
.end method

.method private h()V
    .registers 16

    const-string v0, "com.igexin.sdk.PushService"

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->ae:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_d

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->ae:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_d
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->ae:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const-string v1, "/sdcard/libs/"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_20

    return-void

    :cond_20
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_142

    array-length v3, v2

    if-nez v3, :cond_2b

    goto/16 :goto_142

    :cond_2b
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2e
    if-ge v5, v3, :cond_142

    aget-object v6, v2, v5

    :try_start_32
    const-string v7, ".db"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13e

    const-string v7, "app.db"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13e

    const-string v7, "imsi.db"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13e

    const-string v7, "com.igexin.sdk.deviceId.db"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13e

    const-string v7, "com.getui.sdk.deviceId.db"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13e

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_13e

    sget-object v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/igexin/push/extension/distribution/gbd/i/k;->d(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_74

    goto/16 :goto_13e

    :cond_74
    iget-object v7, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_91

    new-instance v7, Lcom/igexin/push/extension/distribution/gbd/b/e;

    invoke-direct {v7}, Lcom/igexin/push/extension/distribution/gbd/b/e;-><init>()V

    invoke-virtual {v7, v4}, Lcom/igexin/push/extension/distribution/gbd/b/e;->a(I)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v8}, Lcom/igexin/push/extension/distribution/gbd/b/e;->a(Ljava/util/List;)V

    iget-object v8, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_91
    iget-object v7, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/igexin/push/extension/distribution/gbd/b/e;

    invoke-virtual {v7}, Lcom/igexin/push/extension/distribution/gbd/b/e;->d()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a6

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".bin"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/igexin/push/extension/distribution/gbd/i/k;->h(Ljava/lang/String;)[B

    move-result-object v9

    if-eqz v9, :cond_d1

    new-instance v10, Ljava/lang/String;

    invoke-static {v9}, Lcom/igexin/b/b/a;->c([B)[B

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d1
    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_115

    const-string v11, "|"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_115

    const-string v11, "\\|"

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_115

    array-length v11, v9

    const/4 v12, 0x3

    if-lt v11, v12, :cond_115

    aget-object v8, v9, v8

    const/4 v11, 0x2

    aget-object v11, v9, v11

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_110

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_110

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x20

    if-ne v13, v14, :cond_110

    invoke-virtual {v7, v8}, Lcom/igexin/push/extension/distribution/gbd/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Lcom/igexin/push/extension/distribution/gbd/b/e;->b(Ljava/lang/String;)V

    :cond_110
    array-length v7, v9

    if-le v7, v12, :cond_115

    aget-object v10, v9, v12

    :cond_115
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_13e

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v7, v6, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v8, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/igexin/push/extension/distribution/gbd/i/k;->c(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_13e

    sget-object v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->ae:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v6, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_130
    .catchall {:try_start_32 .. :try_end_130} :catchall_131

    goto :goto_13e

    :catchall_131
    move-exception v6

    invoke-static {v6}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GBD_GGTH"

    invoke-static {v7, v6}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13e
    :goto_13e
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2e

    :cond_142
    :goto_142
    return-void
.end method

.method private i()V
    .registers 3

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_26
    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/igexin/push/extension/distribution/gbd/b/e;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/igexin/push/extension/distribution/gbd/a/b/a;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/util/TreeMap;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    if-nez v2, :cond_d

    invoke-virtual {p0}, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->c()Ljava/util/Map;

    move-result-object v2

    :cond_d
    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public c()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/igexin/push/extension/distribution/gbd/b/e;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/igexin/push/extension/distribution/gbd/a/b/a;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    if-nez v1, :cond_e

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    :cond_e
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->h()V

    const-string v1, "GBD_GGTH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1-1 -> sdcard libs, l =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->g()V

    const-string v1, "GBD_GGTH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1-2 -> sdcard libs w, l =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->f()V

    const-string v1, "GBD_GGTH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2-> sp, l =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->e()Ljava/util/List;

    move-result-object v1

    const-string v2, "GBD_GGTH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3-> service, l =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->d()V

    const-string v2, "GBD_GGTH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "4-> combine server, l =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->i()V

    const-string v2, "GBD_GGTH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "5-> remove invalid pkg, l =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a(Ljava/util/List;)V

    const-string v1, "GBD_GGTH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "6-> remove invalid service, l =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a:Ljava/util/Map;

    monitor-exit v0

    return-object v1

    :catchall_f1
    move-exception v1

    monitor-exit v0
    :try_end_f3
    .catchall {:try_start_3 .. :try_end_f3} :catchall_f1

    throw v1
.end method
