###### Class com.igexin.push.util.v (com.igexin.push.util.v)
.class public Lcom/igexin/push/util/v;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "com.igexin.push.util.v"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    const/16 v1, 0x100

    new-array v1, v1, [C

    :goto_13
    invoke-virtual {v0, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    if-lez v2, :cond_1e

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_13

    :cond_1e
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_28

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_27
    return-object p1

    :catchall_28
    move-exception p1

    if-eqz p0, :cond_2e

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_2e
    throw p1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_3b

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "charset"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    const-string p0, "="

    const/4 v0, 0x2

    invoke-virtual {v2, p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    if-ne v1, v0, :cond_3b

    const/4 v0, 0x1

    aget-object v1, p0, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_3d

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_3b
    const-string p0, "utf-8"

    :goto_3d
    return-object p0
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 5

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/16 p1, 0x7530

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string p1, "User-Agent"

    const-string v1, "GETUI"

    invoke-virtual {v0, p1, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Type"

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HOST"

    invoke-virtual {v0, p1, p0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)[B
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_2d
    .catchall {:try_start_1 .. :try_end_6} :catchall_26

    :try_start_6
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x400

    invoke-direct {p0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v2, v2, [B

    :goto_f
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1b

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_f

    :cond_1b
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1f} :catch_2e
    .catchall {:try_start_6 .. :try_end_1f} :catchall_23

    :try_start_1f
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_22

    :catch_22
    return-object p0

    :catchall_23
    move-exception p0

    move-object v0, v1

    goto :goto_27

    :catchall_26
    move-exception p0

    :goto_27
    if-eqz v0, :cond_2c

    :try_start_29
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2c

    :catch_2c
    :cond_2c
    throw p0

    :catch_2d
    move-object v1, v0

    :catch_2e
    if-eqz v1, :cond_33

    :try_start_30
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_33

    :catch_33
    :cond_33
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;[BII)[B
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string p0, "POST"

    invoke-static {v1, p0, p1}, Lcom/igexin/push/util/v;->a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_2f
    .catchall {:try_start_1 .. :try_end_c} :catchall_2c

    :try_start_c
    invoke-virtual {p0, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, p4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_12} :catch_2a
    .catchall {:try_start_c .. :try_end_12} :catchall_32

    :try_start_12
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-static {p0}, Lcom/igexin/push/util/v;->a(Ljava/net/HttpURLConnection;)[B

    move-result-object p1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_28
    .catchall {:try_start_12 .. :try_end_1d} :catchall_32

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_22
    if-eqz p0, :cond_27

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_27
    return-object p1

    :catch_28
    move-exception p1

    :try_start_29
    throw p1

    :catch_2a
    move-exception p1

    goto :goto_31

    :catchall_2c
    move-exception p1

    move-object p0, v0

    goto :goto_33

    :catch_2f
    move-exception p1

    move-object p0, v0

    :goto_31
    throw p1
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p1

    :goto_33
    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_38
    if-eqz p0, :cond_3d

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3d
    throw p1
.end method

.method public static a(Ljava/lang/String;[BII)[B
    .registers 5

    const-string v0, "application/octet-stream"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/igexin/push/util/v;->a(Ljava/lang/String;Ljava/lang/String;[BII)[B

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/net/HttpURLConnection;)[B
    .registers 2

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/igexin/push/util/v;->a(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0

    :cond_f
    invoke-static {p0}, Lcom/igexin/push/util/v;->b(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/push/util/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/igexin/push/util/v;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    return-object v0

    :cond_17
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
