###### Class io.dcloud.f.a.d.c (io.dcloud.f.a.d.c)
.class public Lio/dcloud/f/a/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([BILjava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_16

    .line 4
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-nez p2, :cond_16

    return-void

    .line 8
    :cond_16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3e

    .line 10
    :try_start_1c
    new-instance p2, Ljava/io/RandomAccessFile;

    const-string v1, "rws"

    invoke-direct {p2, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    array-length v0, p0

    add-int/2addr v0, p1

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    int-to-long v0, p1

    .line 12
    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 13
    invoke-virtual {p2, p0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 14
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_33} :catch_39
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_33} :catch_34

    goto :goto_7a

    :catch_34
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7a

    :catch_39
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_7a

    .line 25
    :cond_3e
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_46
    const/4 p1, 0x0

    .line 31
    :try_start_47
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_47 .. :try_end_4c} :catch_4e

    move-object p1, p2

    goto :goto_52

    :catch_4e
    move-exception p2

    .line 33
    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_52
    if-eqz p1, :cond_7a

    if-eqz p0, :cond_72

    const/4 p2, 0x0

    .line 38
    :try_start_57
    array-length v0, p0

    invoke-virtual {p1, p0, p2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 39
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5e} :catch_61
    .catchall {:try_start_57 .. :try_end_5e} :catchall_5f

    goto :goto_72

    :catchall_5f
    move-exception p0

    goto :goto_69

    :catch_61
    move-exception p0

    .line 42
    :try_start_62
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_5f

    .line 45
    :try_start_65
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_76

    goto :goto_7a

    :goto_69
    :try_start_69
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_71

    :catch_6d
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 50
    :goto_71
    throw p0

    .line 51
    :cond_72
    :goto_72
    :try_start_72
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    goto :goto_7a

    :catch_76
    move-exception p0

    .line 54
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7a
    :goto_7a
    return-void
.end method
