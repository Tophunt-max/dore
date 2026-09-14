###### Class com.igexin.push.extension.distribution.basic.j.i (com.igexin.push.extension.distribution.basic.j.i)
.class public Lcom/igexin/push/extension/distribution/basic/j/i;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/igexin/push/extension/distribution/basic/d/a;->a()Lcom/igexin/push/extension/distribution/basic/d/a;

    invoke-static {}, Lcom/igexin/push/extension/distribution/basic/d/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/libs//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".bin"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/igexin/push/extension/distribution/basic/j/i;->b(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_36

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/igexin/push/extension/distribution/basic/j/n;->b([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_36
    .catchall {:try_start_0 .. :try_end_36} :catchall_42

    :cond_36
    :try_start_36
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3b

    :catchall_3a
    const/4 v0, 0x0

    :goto_3b
    :try_start_3b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_42

    if-nez p0, :cond_42

    return-object v0

    :catchall_42
    :cond_42
    const-string p0, "com.igexin.sdk.PushService"

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_12

    return-object v1

    :cond_12
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_142

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1a
    array-length v4, p0

    if-ge v3, v4, :cond_142

    aget-object v4, p0, v3

    if-eqz v4, :cond_13e

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_13e

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".db"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_13e

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.igexin.sdk.deviceId.db"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13e

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.getui.sdk.deviceId.db"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13e

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "app.db"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13e

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "imsi.db"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13e

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/igexin/push/extension/distribution/basic/j/c;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13e

    sget-object v6, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_89

    goto/16 :goto_13e

    :cond_89
    const/16 v6, 0x400

    new-array v6, v6, [B
    :try_end_8d
    .catchall {:try_start_6 .. :try_end_8d} :catchall_143

    :try_start_8d
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_92} :catch_bb
    .catchall {:try_start_8d .. :try_end_92} :catchall_b6

    :try_start_92
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_97} :catch_b3
    .catchall {:try_start_92 .. :try_end_97} :catchall_af

    :goto_97
    :try_start_97
    invoke-virtual {v7, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_a2

    invoke-virtual {v4, v6, v2, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_97

    :cond_a2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a6} :catch_ad
    .catchall {:try_start_97 .. :try_end_a6} :catchall_132

    :try_start_a6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_ac
    .catchall {:try_start_a6 .. :try_end_ac} :catchall_143

    goto :goto_e9

    :catch_ad
    move-exception v6

    goto :goto_be

    :catchall_af
    move-exception p0

    move-object v4, v1

    goto/16 :goto_133

    :catch_b3
    move-exception v6

    move-object v4, v1

    goto :goto_be

    :catchall_b6
    move-exception p0

    move-object v4, v1

    move-object v7, v4

    goto/16 :goto_133

    :catch_bb
    move-exception v6

    move-object v4, v1

    move-object v7, v4

    :goto_be
    :try_start_be
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EXT-FileUtils| read "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "excetpion:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_de
    .catchall {:try_start_be .. :try_end_de} :catchall_132

    if-eqz v7, :cond_e3

    :try_start_e0
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    :cond_e3
    if-eqz v4, :cond_e8

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_e8
    move-object v6, v1

    :goto_e9
    if-nez v6, :cond_105

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EXT-FileUtils|read "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "bytes == null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    goto :goto_13e

    :cond_105
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/igexin/push/core/f;->B:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/igexin/b/a/a/a;->a([BLjava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4
    :try_end_117
    .catchall {:try_start_e0 .. :try_end_117} :catchall_143

    const/4 v6, 0x2

    if-le v5, v6, :cond_13e

    :try_start_11a
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "cid"

    aget-object v6, v4, v6

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "appid"

    const/4 v7, 0x1

    aget-object v4, v4, v7

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_131} :catch_13e
    .catchall {:try_start_11a .. :try_end_131} :catchall_143

    goto :goto_13e

    :catchall_132
    move-exception p0

    :goto_133
    if-eqz v7, :cond_138

    :try_start_135
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    :cond_138
    if-eqz v4, :cond_13d

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_13d
    throw p0
    :try_end_13e
    .catchall {:try_start_135 .. :try_end_13e} :catchall_143

    :catch_13e
    :cond_13e
    :goto_13e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1a

    :cond_142
    return-object v0

    :catchall_143
    return-object v1
.end method

.method public static a()Z
    .registers 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/libs//test.log"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_10
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_15

    const/4 v0, 0x1

    return v0

    :catchall_15
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Ljava/lang/String;)[B
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXT-FileUtils|get data from file = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " file not exist ######"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-object v1

    :cond_26
    const/16 v0, 0x400

    new-array v0, v0, [B

    :try_start_2a
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2f} :catch_56
    .catchall {:try_start_2a .. :try_end_2f} :catchall_53

    :try_start_2f
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_34} :catch_50
    .catchall {:try_start_2f .. :try_end_34} :catchall_4d

    :goto_34
    :try_start_34
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_40

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_34

    :cond_40
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_44} :catch_4b
    .catchall {:try_start_34 .. :try_end_44} :catchall_7c

    :try_start_44
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_47

    :catch_47
    :goto_47
    :try_start_47
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_7b

    goto :goto_7b

    :catch_4b
    move-exception v0

    goto :goto_59

    :catchall_4d
    move-exception v0

    move-object p0, v1

    goto :goto_7d

    :catch_50
    move-exception v0

    move-object p0, v1

    goto :goto_59

    :catchall_53
    move-exception v0

    move-object p0, v1

    goto :goto_7e

    :catch_56
    move-exception v0

    move-object p0, v1

    move-object v2, p0

    :goto_59
    :try_start_59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXT-FileUtils|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_59 .. :try_end_71} :catchall_7c

    if-eqz v2, :cond_78

    :try_start_73
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_78

    :catch_77
    nop

    :cond_78
    :goto_78
    if-eqz p0, :cond_7b

    goto :goto_47

    :catch_7b
    :cond_7b
    :goto_7b
    return-object v1

    :catchall_7c
    move-exception v0

    :goto_7d
    move-object v1, v2

    :goto_7e
    if-eqz v1, :cond_85

    :try_start_80
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_85

    :catch_84
    nop

    :cond_85
    :goto_85
    if-eqz p0, :cond_8a

    :try_start_87
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_8a

    :catch_8a
    :cond_8a
    throw v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/basic/d/c;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/libs//"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".db"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/igexin/push/extension/distribution/basic/j/i;->b(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_27

    return-object v1

    :cond_27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "cantgetimei"

    invoke-static {v2}, Lcom/igexin/push/extension/distribution/basic/j/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v3}, Lcom/igexin/push/extension/distribution/basic/j/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_5b

    sget-object v4, Lcom/igexin/push/core/f;->B:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4a

    sget-object v4, Lcom/igexin/push/core/f;->B:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    :cond_4a
    sget-object v4, Lcom/igexin/push/core/f;->u:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5b

    sget-object v4, Lcom/igexin/push/core/f;->u:Ljava/lang/String;

    invoke-static {v4}, Lcom/igexin/push/extension/distribution/basic/j/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5b
    sget-object v4, Lcom/igexin/push/core/f;->B:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "000000000000000"

    invoke-static {v3}, Lcom/igexin/push/extension/distribution/basic/j/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    sget-object v3, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/igexin/push/extension/distribution/basic/j/h;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_83

    invoke-static {v2}, Lcom/igexin/push/extension/distribution/basic/j/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_83
    const-string v2, "[\\.:0-9a-zA-Z\\|]+"

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_89
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ab

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/igexin/b/a/a/a;->a([BLjava/lang/String;)[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2, v4}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_89

    const-string p0, "\\|"

    invoke-virtual {v4, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_ac

    :cond_ab
    move-object p0, v1

    :goto_ac
    if-eqz p0, :cond_c0

    array-length v0, p0

    const/4 v2, 0x3

    if-le v0, v2, :cond_c0

    aget-object p0, p0, v2
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_b4} :catch_c0

    if-eqz p0, :cond_bf

    :try_start_b6
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_bc} :catch_bf

    if-eqz v0, :cond_bf

    goto :goto_c0

    :catch_bf
    :cond_bf
    move-object v1, p0

    :catch_c0
    :cond_c0
    :goto_c0
    return-object v1
.end method
