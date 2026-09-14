###### Class com.igexin.push.extension.distribution.gbd.i.ae (com.igexin.push.extension.distribution.gbd.i.ae)
.class public Lcom/igexin/push/extension/distribution/gbd/i/ae;
.super Ljava/lang/Object;


# direct methods
.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    if-lez p0, :cond_a

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static a(I)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_4
    const-string v3, "/proc/%d/cmdline"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/igexin/push/extension/distribution/gbd/i/ae;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1a} :catch_1b

    goto :goto_20

    :catch_1b
    move-exception v3

    invoke-static {v3}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    :goto_20
    :try_start_20
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_51

    const-string v4, "/proc/%d/stat"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/ae;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\s+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v2

    const-string v1, "("

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ")"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_4c} :catch_4d

    return-object p0

    :catch_4d
    move-exception p0

    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_51
    return-object v3
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, ":"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "^([a-zA-Z]+[.][a-zA-Z]+)[.]*.*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_14

    return-object v1

    :cond_14
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_22

    :cond_21
    return-object p0

    :catchall_22
    move-exception p0

    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10

    const-string v0, ":"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "^([a-zA-Z]+[.][a-zA-Z]+)[.]*.*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/extension/distribution/gbd/c/c;->ak:Ljava/util/List;

    if-eqz v3, :cond_19

    sget-object v3, Lcom/igexin/push/extension/distribution/gbd/c/c;->ak:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2c

    :cond_19
    sget-object v3, Lcom/igexin/push/extension/distribution/gbd/c/a;->bC:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v4, Lcom/igexin/push/extension/distribution/gbd/c/c;->ak:Ljava/util/List;

    :cond_2c
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_40

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object v3, p0, v5

    aget-object p0, p0, v4

    move-object v7, v3

    move-object v3, p0

    move-object p0, v7

    goto :goto_41

    :cond_40
    move-object v3, v1

    :goto_41
    sget-object v6, Lcom/igexin/push/extension/distribution/gbd/c/c;->ak:Ljava/util/List;

    invoke-interface {v6, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_9d

    const-string v2, "com.android"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    if-eqz v6, :cond_9d

    :cond_57
    const-string v2, "android.process"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9d

    const-string v2, "org."

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_9e

    if-eqz v2, :cond_68

    goto :goto_9d

    :cond_68
    :try_start_68
    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_81

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_a2

    :cond_81
    if-eqz p1, :cond_97

    if-eqz v3, :cond_97

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_97} :catch_98
    .catchall {:try_start_68 .. :try_end_97} :catchall_9e

    :cond_97
    return-object p0

    :catch_98
    move-exception p0

    :try_start_99
    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_9e

    goto :goto_a2

    :cond_9d
    :goto_9d
    return-object v1

    :catchall_9e
    move-exception p0

    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_a2
    :goto_a2
    return-object v1
.end method

.method private static a(Ljava/lang/String;ZLjava/lang/String;)Ljava/util/ArrayList;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ","

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :try_start_c
    sget-object v4, Lcom/igexin/push/extension/distribution/gbd/c/a;->U:Ljava/lang/String;

    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x4

    if-eq v5, v6, :cond_19

    return-object v3

    :cond_19
    const/4 v5, 0x0

    aget-object v6, v4, v5

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v8, v4, v7

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v10, v4, v9

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    aget-object v4, v4, v11

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, p0

    invoke-virtual {v1, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_49
    .catchall {:try_start_c .. :try_end_49} :catchall_128

    :cond_49
    :goto_49
    :try_start_49
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_121

    const-string v4, "USER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_55
    .catchall {:try_start_49 .. :try_end_55} :catchall_125

    if-eqz v4, :cond_58

    goto :goto_49

    :cond_58
    const-string v4, "zygote"

    const-string v11, "none"

    if-eqz p1, :cond_65

    :try_start_5e
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_84

    goto :goto_49

    :cond_65
    array-length v12, v8

    if-le v12, v7, :cond_84

    aget-object v12, v8, v5

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_84

    array-length v12, v8

    const/4 v13, 0x0

    const/4 v14, 0x1

    :goto_73
    if-ge v13, v12, :cond_81

    aget-object v15, v8, v13

    invoke-virtual {v3, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7e

    const/4 v14, 0x0

    :cond_7e
    add-int/lit8 v13, v13, 0x1

    goto :goto_73

    :cond_81
    if-nez v14, :cond_84

    goto :goto_49

    :cond_84
    const-string v12, " +"

    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v12, v3

    sub-int/2addr v12, v7

    if-eqz p1, :cond_9e

    aget-object v11, v3, v12

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9b

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_121

    :cond_9b
    move-object/from16 v11, p2

    goto :goto_49

    :cond_9e
    aget-object v4, v3, v12

    const-string v13, "\\."

    invoke-static {v4, v13}, Lcom/igexin/push/extension/distribution/gbd/i/ae;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-le v4, v9, :cond_a9

    goto :goto_49

    :cond_a9
    array-length v4, v10

    if-lt v4, v7, :cond_cc

    aget-object v4, v10, v5

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_cc

    array-length v4, v10

    const/4 v13, 0x0

    :goto_b6
    if-ge v13, v4, :cond_c7

    aget-object v14, v10, v13

    aget-object v15, v3, v12

    invoke-virtual {v15, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_c4

    const/4 v4, 0x0

    goto :goto_c8

    :cond_c4
    add-int/lit8 v13, v13, 0x1

    goto :goto_b6

    :cond_c7
    const/4 v4, 0x1

    :goto_c8
    if-nez v4, :cond_cc

    goto/16 :goto_49

    :cond_cc
    array-length v4, v6

    if-lt v4, v7, :cond_ef

    aget-object v4, v6, v5

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ef

    array-length v4, v6

    const/4 v13, 0x0

    :goto_d9
    if-ge v13, v4, :cond_ea

    aget-object v14, v6, v13

    aget-object v15, v3, v12

    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e7

    const/4 v4, 0x0

    goto :goto_eb

    :cond_e7
    add-int/lit8 v13, v13, 0x1

    goto :goto_d9

    :cond_ea
    const/4 v4, 0x1

    :goto_eb
    if-nez v4, :cond_ef

    goto/16 :goto_49

    :cond_ef
    array-length v4, v0

    if-lt v4, v7, :cond_112

    aget-object v4, v0, v5

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_112

    array-length v4, v0

    const/4 v11, 0x0

    :goto_fc
    if-ge v11, v4, :cond_10d

    aget-object v13, v0, v11

    aget-object v14, v3, v12

    invoke-virtual {v14, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10a

    const/4 v4, 0x0

    goto :goto_10e

    :cond_10a
    add-int/lit8 v11, v11, 0x1

    goto :goto_fc

    :cond_10d
    const/4 v4, 0x1

    :goto_10e
    if-nez v4, :cond_112

    goto/16 :goto_49

    :cond_112
    aget-object v4, v3, v9

    move-object/from16 v11, p2

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11f
    .catchall {:try_start_5e .. :try_end_11f} :catchall_125

    goto/16 :goto_49

    :cond_121
    :goto_121
    :try_start_121
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_124} :catch_132

    goto :goto_137

    :catchall_125
    move-exception v0

    move-object v3, v1

    goto :goto_129

    :catchall_128
    move-exception v0

    :goto_129
    :try_start_129
    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_12c
    .catchall {:try_start_129 .. :try_end_12c} :catchall_138

    if-eqz v3, :cond_137

    :try_start_12e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_131} :catch_132

    goto :goto_137

    :catch_132
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_137
    :goto_137
    return-object v2

    :catchall_138
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_145

    :try_start_13c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_13f} :catch_140

    goto :goto_145

    :catch_140
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_145
    :goto_145
    throw v1
.end method

.method private static a()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ps -P"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, ""

    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Lcom/igexin/push/extension/distribution/gbd/i/ae;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_35

    :cond_13
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1a

    return-object v1

    :cond_1a
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v0, v4, v2}, Lcom/igexin/push/extension/distribution/gbd/i/ae;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_30

    goto :goto_35

    :cond_30
    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/ae;->a(Ljava/util/ArrayList;Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_34} :catch_36

    return-object v0

    :cond_35
    :goto_35
    return-object v1

    :catch_36
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_20

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x9

    aget-object p1, p1, v2

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_b

    :cond_20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_3e
    return-object v0
.end method

.method public static a(ZZ)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/ae;->b(ZZ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_c
    if-nez p1, :cond_12

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/ae;->a()Ljava/util/List;

    move-result-object p0

    :cond_12
    if-eqz p0, :cond_33

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", running = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GBD_RAU"

    invoke-static {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    return-object p0
.end method

.method private static b(I)J
    .registers 7

    :try_start_0
    const-string v0, "/proc/%d/stat"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/ae;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x15

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->x()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_31

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xa

    mul-long v0, v0, v4

    add-long/2addr v2, v0

    return-wide v2

    :catchall_31
    move-exception p0

    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_3f

    :try_start_b
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_3c

    :try_start_10
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    :goto_16
    if-eqz v3, :cond_25

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_16

    :cond_25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_3a

    :try_start_29
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2d
    .catchall {:try_start_29 .. :try_end_2c} :catchall_48

    goto :goto_31

    :catch_2d
    move-exception v2

    :try_start_2e
    invoke-static {v2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_48

    :goto_31
    :try_start_31
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_35
    .catchall {:try_start_31 .. :try_end_34} :catchall_48

    goto :goto_39

    :catch_35
    move-exception p0

    :try_start_36
    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_48

    :goto_39
    return-object v1

    :catchall_3a
    move-exception v1

    goto :goto_42

    :catchall_3c
    move-exception v1

    move-object p0, v0

    goto :goto_42

    :catchall_3f
    move-exception v1

    move-object p0, v0

    move-object v2, p0

    :goto_42
    if-eqz v2, :cond_4e

    :try_start_44
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_4a
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4e

    :catchall_48
    move-exception p0

    goto :goto_59

    :catch_4a
    move-exception v2

    :try_start_4b
    invoke-static {v2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_48

    :cond_4e
    :goto_4e
    if-eqz p0, :cond_58

    :try_start_50
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_54
    .catchall {:try_start_50 .. :try_end_53} :catchall_48

    goto :goto_58

    :catch_54
    move-exception p0

    :try_start_55
    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_58
    :goto_58
    throw v1
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_48

    :goto_59
    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static b(ZZ)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ":"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/c;->q:Ljava/util/Map;

    if-nez v2, :cond_12

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/igexin/push/extension/distribution/gbd/c/c;->q:Ljava/util/Map;

    :cond_12
    if-eqz p0, :cond_19

    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/c;->q:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    :cond_19
    const/4 v2, 0x0

    if-eqz p1, :cond_1e

    const/4 v3, 0x0

    goto :goto_20

    :cond_1e
    const/16 v3, 0x7d0

    :goto_20
    new-instance v4, Ljava/io/File;

    const-string v5, "/proc"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/igexin/push/extension/distribution/gbd/i/af;

    invoke-direct {v5, v3}, Lcom/igexin/push/extension/distribution/gbd/i/af;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_32
    if-ge v5, v4, :cond_a4

    aget-object v6, v3, v5

    :try_start_36
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3e} :catch_a1

    :try_start_3e
    invoke-static {v6}, Lcom/igexin/push/extension/distribution/gbd/i/ae;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_53

    if-eqz p1, :cond_4f

    invoke-static {v7}, Lcom/igexin/push/extension/distribution/gbd/i/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_53

    :cond_4f
    invoke-static {v7, p0}, Lcom/igexin/push/extension/distribution/gbd/i/ae;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    :cond_53
    :goto_53
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a1

    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a1

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_a1

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_70

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v2

    :cond_70
    invoke-static {v6}, Lcom/igexin/push/extension/distribution/gbd/i/ae;->b(I)J

    move-result-wide v8

    sget-object v6, Lcom/igexin/push/extension/distribution/gbd/c/c;->q:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_96

    sget-object v6, Lcom/igexin/push/extension/distribution/gbd/c/c;->q:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-gez v6, :cond_a1

    sget-object v6, Lcom/igexin/push/extension/distribution/gbd/c/c;->q:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    :goto_92
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a1

    :cond_96
    sget-object v6, Lcom/igexin/push/extension/distribution/gbd/c/c;->q:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8
    :try_end_9c
    .catchall {:try_start_3e .. :try_end_9c} :catchall_9d

    goto :goto_92

    :catchall_9d
    move-exception v6

    invoke-static {v6}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :catch_a1
    :cond_a1
    :goto_a1
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    :cond_a4
    return-object v1
.end method
