###### Class com.igexin.push.extension.distribution.gbd.a.b.r (com.igexin.push.extension.distribution.gbd.a.b.r)
.class public Lcom/igexin/push/extension/distribution/gbd/a/b/r;
.super Ljava/lang/Object;


# direct methods
.method public static a()V
    .registers 4

    const-wide/16 v0, 0x1f4

    :try_start_2
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_13

    goto :goto_17

    :catchall_13
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_17
    return-void
.end method

.method public static a(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    const-string v0, "none"

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/a;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_52

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->I:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4d

    array-length v1, v0

    if-nez v1, :cond_20

    goto :goto_4d

    :cond_20
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_31
    :goto_31
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V
    :try_end_4c
    .catchall {:try_start_0 .. :try_end_4c} :catchall_4e

    goto :goto_31

    :cond_4d
    :goto_4d
    return-void

    :catchall_4e
    move-exception p0

    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_52
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 16

    const-string v0, "&"

    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/a;->aA:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_b2

    const-string v2, "none"

    sget-object v4, Lcom/igexin/push/extension/distribution/gbd/c/a;->aA:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto/16 :goto_b2

    :cond_18
    const-string v2, "GuardUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "guardBrandSdkRomBlackList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/igexin/push/extension/distribution/gbd/c/a;->aA:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/a;->aA:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    if-lez v4, :cond_b2

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->r()Ljava/lang/String;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->s()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    array-length v7, v2

    const/4 v8, 0x0

    :goto_4b
    if-ge v8, v7, :cond_b2

    aget-object v9, v2, v8

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x4

    if-lt v10, v11, :cond_af

    aget-object v10, v9, v1

    aget-object v11, v9, v3

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x2

    aget-object v13, v9, v12

    const/4 v14, 0x3

    aget-object v9, v9, v14

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_af

    if-lt v5, v11, :cond_af

    array-length v10, v9

    if-eq v10, v12, :cond_77

    goto :goto_af

    :cond_77
    aget-object v10, v9, v1

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    aget-object v9, v9, v3

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string v11, "*"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_90

    invoke-static {v10, v9, p0}, Lcom/igexin/push/extension/distribution/gbd/a/b/r;->a(ZZLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_90
    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    if-lez v12, :cond_af

    array-length v12, v11

    const/4 v13, 0x0

    :goto_99
    if-ge v13, v12, :cond_af

    aget-object v14, v11, v13

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_ac

    invoke-static {v10, v9, p0}, Lcom/igexin/push/extension/distribution/gbd/a/b/r;->a(ZZLjava/lang/String;)Z

    move-result p0
    :try_end_ab
    .catchall {:try_start_3 .. :try_end_ab} :catchall_b3

    return p0

    :cond_ac
    add-int/lit8 v13, v13, 0x1

    goto :goto_99

    :cond_af
    :goto_af
    add-int/lit8 v8, v8, 0x1

    goto :goto_4b

    :cond_b2
    :goto_b2
    return v3

    :catchall_b3
    move-exception p0

    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    return v1
.end method

.method private static a(ZZLjava/lang/String;)Z
    .registers 7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_6a

    goto :goto_56

    :sswitch_15
    const-string v2, "service"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1e

    goto :goto_56

    :cond_1e
    const/4 v0, 0x5

    goto :goto_56

    :sswitch_20
    const-string v2, "third"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_29

    goto :goto_56

    :cond_29
    const/4 v0, 0x4

    goto :goto_56

    :sswitch_2b
    const-string v2, "oneof"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_34

    goto :goto_56

    :cond_34
    const/4 v0, 0x3

    goto :goto_56

    :sswitch_36
    const-string v2, "all"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3f

    goto :goto_56

    :cond_3f
    const/4 v0, 0x2

    goto :goto_56

    :sswitch_41
    const-string v2, "transmission"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4a

    goto :goto_56

    :cond_4a
    const/4 v0, 0x1

    goto :goto_56

    :sswitch_4c
    const-string v2, "activity"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_55

    goto :goto_56

    :cond_55
    const/4 v0, 0x0

    :goto_56
    packed-switch v0, :pswitch_data_84

    :cond_59
    const/4 p0, 0x0

    goto :goto_68

    :pswitch_5b
    move p0, p1

    goto :goto_68

    :pswitch_5d
    if-nez p0, :cond_61

    if-eqz p1, :cond_59

    :cond_61
    :goto_61
    const/4 p0, 0x1

    goto :goto_68

    :pswitch_63
    if-eqz p0, :cond_59

    if-eqz p1, :cond_59

    goto :goto_61

    :goto_68
    :pswitch_68
    return p0

    nop

    :sswitch_data_6a
    .sparse-switch
        -0x62b40cf1 -> :sswitch_4c
        -0x6883e1c -> :sswitch_41
        0x179a1 -> :sswitch_36
        0x64fbabd -> :sswitch_2b
        0x6938567 -> :sswitch_20
        0x7643c6b5 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_68
        :pswitch_68
        :pswitch_63
        :pswitch_5d
        :pswitch_63
        :pswitch_5b
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    sget-boolean v1, Lcom/igexin/push/extension/distribution/gbd/c/a;->ba:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->ao:Ljava/util/List;

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->ao:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->ao:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    return v2

    :cond_1b
    sget-boolean v1, Lcom/igexin/push/extension/distribution/gbd/c/a;->ba:Z

    if-eqz v1, :cond_54

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/a;->bb:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_54

    const-string v1, "none"

    sget-object v3, Lcom/igexin/push/extension/distribution/gbd/c/a;->bb:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_54

    :cond_38
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/a;->bb:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    if-nez v3, :cond_44

    return v0

    :cond_44
    array-length v3, v1

    const/4 v4, 0x0

    :goto_46
    if-ge v4, v3, :cond_59

    aget-object v5, v1, v4

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_55

    if-eqz v5, :cond_51

    return v2

    :cond_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    :cond_54
    :goto_54
    return v0

    :catchall_55
    move-exception p0

    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_59
    return v0
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 11

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->at:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_16

    :cond_f
    new-instance v1, Lorg/json/JSONObject;

    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/c;->at:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_16
    const-wide/16 v2, 0x0

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sget-wide v6, Lcom/igexin/push/extension/distribution/gbd/c/a;->bK:J

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    const/4 v8, 0x1

    cmp-long v9, v4, v6

    if-lez v9, :cond_34

    const/4 v4, 0x1

    goto :goto_35

    :cond_34
    const/4 v4, 0x0

    :goto_35
    const-string v5, "GuardUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "last bind time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " , isBindOk = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_68

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object p0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->c(Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_1 .. :try_end_67} :catchall_69

    return v8

    :cond_68
    return v0

    :catchall_69
    move-exception p0

    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    return v0
.end method
