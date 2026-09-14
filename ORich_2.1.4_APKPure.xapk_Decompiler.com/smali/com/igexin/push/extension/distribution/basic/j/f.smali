###### Class com.igexin.push.extension.distribution.basic.j.f (com.igexin.push.extension.distribution.basic.j.f)
.class public Lcom/igexin/push/extension/distribution/basic/j/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 19

    const-string v0, ""

    const-string v1, "\\."

    const/4 v2, -0x1

    :try_start_5
    const-string v3, "([a-zA-Z_-])*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    move-object/from16 v4, p0

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v4, :cond_82

    array-length v5, v4

    const/4 v6, 0x4

    if-lt v5, v6, :cond_82

    if-eqz v1, :cond_82

    array-length v5, v1

    if-lt v5, v6, :cond_82

    const/4 v5, 0x3

    aget-object v7, v4, v5

    invoke-virtual {v3, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    aget-object v7, v1, v5

    invoke-virtual {v3, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    const-wide/16 v7, 0x0

    const/4 v0, 0x0

    move-wide v9, v7

    const/4 v3, 0x0

    :goto_40
    const-wide/16 v11, 0x64

    const-wide/16 v13, 0x1

    if-ge v3, v6, :cond_5f

    const/4 v5, 0x0

    :goto_47
    rsub-int/lit8 v15, v3, 0x3

    if-ge v5, v15, :cond_50

    mul-long v13, v13, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    :cond_50
    aget-object v5, v4, v3

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_56} :catch_82

    invoke-static {v11, v12}, Ljava/lang/Long;->signum(J)I

    mul-long v11, v11, v13

    add-long/2addr v9, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_5f
    const/4 v3, 0x0

    :goto_60
    if-ge v3, v6, :cond_79

    move-wide v15, v13

    const/4 v4, 0x0

    :goto_64
    rsub-int/lit8 v5, v3, 0x3

    if-ge v4, v5, :cond_6d

    mul-long v15, v15, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    :cond_6d
    :try_start_6d
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_73} :catch_82

    mul-long v4, v4, v15

    add-long/2addr v7, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    :cond_79
    cmp-long v1, v9, v7

    if-lez v1, :cond_7f

    const/4 v2, 0x1

    goto :goto_82

    :cond_7f
    if-nez v1, :cond_82

    const/4 v2, 0x0

    :catch_82
    :cond_82
    :goto_82
    return v2
.end method
