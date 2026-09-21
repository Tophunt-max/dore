###### Class io.dcloud.common.util.IOUtil (io.dcloud.common.util.IOUtil)
.class public Lio/dcloud/common/util/IOUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final BUF_SIZE:I = 0x5000


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final byte2InputStream([B)Ljava/io/InputStream;
    .registers 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static close(Ljava/io/InputStream;)V
    .registers 1

    if-eqz p0, :cond_a

    .line 1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_a
    return-void
.end method

.method public static close(Ljava/io/OutputStream;)V
    .registers 1

    if-eqz p0, :cond_a

    .line 4
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_a
    return-void
.end method

.method public static getBytes(Ljava/io/InputStream;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x5000

    new-array v1, v1, [B

    .line 4
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_18

    .line 11
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 12
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    return-object p0

    :cond_18
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9
.end method

.method public static readStringFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 1
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_17
    .catchall {:try_start_1 .. :try_end_6} :catchall_15

    .line 2
    :try_start_6
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->getBytes(Ljava/io/InputStream;)[B

    move-result-object p0

    .line 3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_f} :catch_13
    .catchall {:try_start_6 .. :try_end_f} :catchall_22

    .line 10
    :try_start_f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_12

    :catch_12
    return-object v2

    :catch_13
    move-exception p0

    goto :goto_19

    :catchall_15
    move-exception p0

    goto :goto_24

    :catch_17
    move-exception p0

    move-object v1, v0

    .line 11
    :goto_19
    :try_start_19
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_22

    if-eqz v1, :cond_21

    .line 16
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_21

    :catch_21
    :cond_21
    return-object v0

    :catchall_22
    move-exception p0

    move-object v0, v1

    :goto_24
    if-eqz v0, :cond_29

    :try_start_26
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_29

    .line 20
    :catch_29
    :cond_29
    throw p0
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 1
    :cond_5
    invoke-static {p0}, Lio/dcloud/common/util/IOUtil;->toStringBuffer(Ljava/io/InputStream;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toStringBuffer(Ljava/io/InputStream;)Ljava/lang/StringBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    :goto_13
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 7
    :cond_22
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v1
.end method

.method public static writeStringFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_26
    .catchall {:try_start_2 .. :try_end_7} :catchall_2e

    .line 2
    :try_start_7
    new-instance p0, Ljava/io/OutputStreamWriter;

    const-string v1, "utf-8"

    invoke-direct {p0, v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V

    .line 4
    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 5
    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1b} :catch_23
    .catchall {:try_start_7 .. :try_end_1b} :catchall_20

    .line 10
    invoke-static {v2}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    const/4 p0, 0x1

    return p0

    :catchall_20
    move-exception p0

    move-object v1, v2

    goto :goto_2f

    :catch_23
    move-exception p0

    move-object v1, v2

    goto :goto_27

    :catch_26
    move-exception p0

    .line 11
    :goto_27
    :try_start_27
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2e

    .line 13
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    return v0

    :catchall_2e
    move-exception p0

    :goto_2f
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    .line 14
    throw p0
.end method
