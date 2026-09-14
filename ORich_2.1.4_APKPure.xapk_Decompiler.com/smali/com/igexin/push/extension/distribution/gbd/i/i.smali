###### Class com.igexin.push.extension.distribution.gbd.i.i (com.igexin.push.extension.distribution.gbd.i.i)
.class public Lcom/igexin/push/extension/distribution/gbd/i/i;
.super Ljava/lang/Object;


# direct methods
.method public static a([BLjava/lang/String;Z)V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_1e
    .catchall {:try_start_1 .. :try_end_b} :catchall_17

    :try_start_b
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_15
    .catchall {:try_start_b .. :try_end_e} :catchall_12

    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_24

    goto :goto_24

    :catchall_12
    move-exception p0

    move-object v0, v1

    goto :goto_18

    :catch_15
    move-object v0, v1

    goto :goto_1f

    :catchall_17
    move-exception p0

    :goto_18
    if-eqz v0, :cond_1d

    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1d

    :catch_1d
    :cond_1d
    throw p0

    :catch_1e
    nop

    :goto_1f
    if-eqz v0, :cond_24

    :try_start_21
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_24

    :catch_24
    :cond_24
    :goto_24
    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileUtils|get data from file = "

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

    const-string v4, "FileUtils|"

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
