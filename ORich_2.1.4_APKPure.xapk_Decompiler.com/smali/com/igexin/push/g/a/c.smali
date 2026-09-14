###### Class com.igexin.push.g.a.c (com.igexin.push.g.a.c)
.class public Lcom/igexin/push/g/a/c;
.super Lcom/igexin/b/a/d/e;


# instance fields
.field public a:Lcom/igexin/push/g/a/b;

.field private b:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Lcom/igexin/push/g/a/b;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/igexin/b/a/d/e;-><init>(I)V

    iput-object p1, p0, Lcom/igexin/push/g/a/c;->a:Lcom/igexin/push/g/a/b;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/igexin/push/g/a/d;
    .registers 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/igexin/push/g/a/c;->b(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/igexin/push/g/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-direct {p0, p1}, Lcom/igexin/push/g/a/c;->a(Ljava/net/HttpURLConnection;)[B

    move-result-object p1

    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/igexin/push/g/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v0, p1}, Lcom/igexin/push/g/a/c;->b(Ljava/net/HttpURLConnection;[B)Lcom/igexin/push/g/a/d;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_16

    invoke-direct {p0}, Lcom/igexin/push/g/a/c;->i()V

    return-object p1

    :catchall_16
    :cond_16
    invoke-direct {p0}, Lcom/igexin/push/g/a/c;->i()V

    new-instance p1, Lcom/igexin/push/g/a/d;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/igexin/push/g/a/d;-><init>(Lcom/igexin/push/g/a/c;Z[B)V

    return-object p1
.end method

.method private a(Ljava/lang/String;[B)Lcom/igexin/push/g/a/d;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/igexin/push/g/a/c;->b(Ljava/lang/String;[B)Ljava/net/HttpURLConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/igexin/push/g/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-direct {p0, p2, p1}, Lcom/igexin/push/g/a/c;->a([BLjava/net/HttpURLConnection;)[B

    move-result-object p1

    if-nez p1, :cond_18

    new-instance p1, Lcom/igexin/push/g/a/d;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2, v1}, Lcom/igexin/push/g/a/d;-><init>(Lcom/igexin/push/g/a/c;Z[B)V
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_46

    invoke-direct {p0}, Lcom/igexin/push/g/a/c;->i()V

    return-object p1

    :cond_18
    :try_start_18
    iget-object p2, p0, Lcom/igexin/push/g/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->connect()V

    new-instance p2, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/igexin/push/g/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {p2, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_46

    :try_start_28
    array-length v2, p1

    invoke-virtual {p2, p1, v0, v2}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V

    iget-object p1, p0, Lcom/igexin/push/g/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-direct {p0, p1}, Lcom/igexin/push/g/a/c;->a(Ljava/net/HttpURLConnection;)[B

    move-result-object p1

    if-eqz p1, :cond_49

    iget-object v2, p0, Lcom/igexin/push/g/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v2, p1}, Lcom/igexin/push/g/a/c;->b(Ljava/net/HttpURLConnection;[B)Lcom/igexin/push/g/a/d;

    move-result-object p1
    :try_end_3d
    .catchall {:try_start_28 .. :try_end_3d} :catchall_44

    :try_start_3d
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_40

    :catch_40
    invoke-direct {p0}, Lcom/igexin/push/g/a/c;->i()V

    return-object p1

    :catchall_44
    nop

    goto :goto_47

    :catchall_46
    move-object p2, v1

    :goto_47
    if-eqz p2, :cond_4c

    :cond_49
    :try_start_49
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4c

    :catch_4c
    :cond_4c
    invoke-direct {p0}, Lcom/igexin/push/g/a/c;->i()V

    new-instance p1, Lcom/igexin/push/g/a/d;

    invoke-direct {p1, p0, v0, v1}, Lcom/igexin/push/g/a/d;-><init>(Lcom/igexin/push/g/a/c;Z[B)V

    return-object p1
.end method

.method private a(Ljava/net/HttpURLConnection;[B)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    new-array v0, v0, [B

    if-eqz p2, :cond_9

    goto :goto_a

    :cond_9
    move-object p2, v0

    :goto_a
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GT_C_T"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/util/EncryptUtils;->getRSAKeyId()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "GT_C_K"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/util/EncryptUtils;->getHttpGTCV()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GT_C_V"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/igexin/push/util/EncryptUtils;->getHttpSignature(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p2

    const-string v1, "GT_T"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GT_C_S"

    invoke-virtual {p1, v0, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a([B)V
    .registers 3

    iget-object v0, p0, Lcom/igexin/push/g/a/c;->a:Lcom/igexin/push/g/a/b;

    invoke-virtual {v0, p1}, Lcom/igexin/push/g/a/b;->a([B)V

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    iget-object v0, p0, Lcom/igexin/push/g/a/c;->a:Lcom/igexin/push/g/a/b;

    invoke-virtual {p1, v0}, Lcom/igexin/b/a/b/c;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/b/a/b/c;->c()V

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)[B
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_3a
    .catchall {:try_start_1 .. :try_end_5} :catchall_38

    :try_start_5
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v3, 0xc8

    if-ne p1, v3, :cond_2c

    const/16 p1, 0x400

    new-array p1, p1, [B

    :goto_16
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_22

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_16

    :cond_22
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_26} :catch_35
    .catchall {:try_start_5 .. :try_end_26} :catchall_32

    if-eqz v1, :cond_2b

    :try_start_28
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2b

    :catch_2b
    :cond_2b
    return-object p1

    :cond_2c
    if-eqz v1, :cond_31

    :try_start_2e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_31

    :catch_31
    :cond_31
    return-object v0

    :catchall_32
    move-exception p1

    move-object v0, v1

    goto :goto_3c

    :catch_35
    move-exception p1

    move-object v0, v1

    goto :goto_3b

    :catchall_38
    move-exception p1

    goto :goto_3c

    :catch_3a
    move-exception p1

    :goto_3b
    :try_start_3b
    throw p1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_38

    :goto_3c
    if-eqz v0, :cond_41

    :try_start_3e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_41

    :catch_41
    :cond_41
    throw p1
.end method

.method private a([BLjava/net/HttpURLConnection;)[B
    .registers 5

    const-string v0, "GT_C_S"

    :try_start_2
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_38

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lcom/igexin/push/util/EncryptUtils;->md5([B)[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/igexin/push/util/EncryptUtils;->aesEncHttp([B[B)[B

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_1f

    return-object p1

    :catchall_1f
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_HttpTask|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_38
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Ljava/net/HttpURLConnection;[B)Lcom/igexin/push/g/a/d;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    const-string v2, "GT_ERR"

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_HttpTask|GT_ERR = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    if-eqz v2, :cond_78

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_78

    :cond_27
    const-string v2, "GT_T"

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3a

    const-string p1, "_HttpTask|GT_T = null"

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/igexin/push/g/a/d;

    invoke-direct {p1, p0, v1, v0}, Lcom/igexin/push/g/a/d;-><init>(Lcom/igexin/push/g/a/c;Z[B)V

    return-object p1

    :cond_3a
    const-string v3, "GT_C_S"

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4d

    const-string p1, "_HttpTask|GT_C_S = null"

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/igexin/push/g/a/d;

    invoke-direct {p1, p0, v1, v0}, Lcom/igexin/push/g/a/d;-><init>(Lcom/igexin/push/g/a/c;Z[B)V

    return-object p1

    :cond_4d
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/igexin/push/util/EncryptUtils;->md5([B)[B

    move-result-object v3

    invoke-static {p2, v3}, Lcom/igexin/push/util/EncryptUtils;->aesDecHttp([B[B)[B

    move-result-object p2

    invoke-static {v2, p2}, Lcom/igexin/push/util/EncryptUtils;->getHttpSignature(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6d

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_66

    goto :goto_6d

    :cond_66
    new-instance p1, Lcom/igexin/push/g/a/d;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2, p2}, Lcom/igexin/push/g/a/d;-><init>(Lcom/igexin/push/g/a/c;Z[B)V

    return-object p1

    :cond_6d
    :goto_6d
    const-string p1, "_HttpTask|signature = null or error"

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/igexin/push/g/a/d;

    invoke-direct {p1, p0, v1, v0}, Lcom/igexin/push/g/a/d;-><init>(Lcom/igexin/push/g/a/c;Z[B)V

    return-object p1

    :cond_78
    :goto_78
    new-instance p1, Lcom/igexin/push/g/a/d;

    invoke-direct {p1, p0, v1, v0}, Lcom/igexin/push/g/a/d;-><init>(Lcom/igexin/push/g/a/c;Z[B)V
    :try_end_7d
    .catchall {:try_start_2 .. :try_end_7d} :catchall_7e

    return-object p1

    :catchall_7e
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_HttpTask|"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/igexin/push/g/a/d;

    invoke-direct {p1, p0, v1, v0}, Lcom/igexin/push/g/a/d;-><init>(Lcom/igexin/push/g/a/c;Z[B)V

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 3

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/igexin/push/g/a/c;->b:Ljava/net/HttpURLConnection;

    const/16 v0, 0x4e20

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object p1, p0, Lcom/igexin/push/g/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object p1, p0, Lcom/igexin/push/g/a/c;->b:Ljava/net/HttpURLConnection;

    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/igexin/push/g/a/c;->b:Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object p1, p0, Lcom/igexin/push/g/a/c;->b:Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/igexin/push/g/a/c;->a(Ljava/net/HttpURLConnection;[B)V

    iget-object p1, p0, Lcom/igexin/push/g/a/c;->b:Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method private b(Ljava/lang/String;[B)Ljava/net/HttpURLConnection;
    .registers 5

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/igexin/push/g/a/c;->b:Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object p1, p0, Lcom/igexin/push/g/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object p1, p0, Lcom/igexin/push/g/a/c;->b:Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/igexin/push/g/a/c;->b:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object p1, p0, Lcom/igexin/push/g/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object p1, p0, Lcom/igexin/push/g/a/c;->b:Ljava/net/HttpURLConnection;

    const-string v0, "Content-Type"

    const-string v1, "application/octet-stream"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/igexin/push/g/a/c;->b:Ljava/net/HttpURLConnection;

    const/16 v0, 0x4e20

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object p1, p0, Lcom/igexin/push/g/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object p1, p0, Lcom/igexin/push/g/a/c;->b:Ljava/net/HttpURLConnection;

    invoke-direct {p0, p1, p2}, Lcom/igexin/push/g/a/c;->a(Ljava/net/HttpURLConnection;[B)V

    iget-object p1, p0, Lcom/igexin/push/g/a/c;->b:Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method private i()V
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/g/a/c;->b:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_a

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igexin/push/g/a/c;->b:Ljava/net/HttpURLConnection;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_a

    :catch_a
    :cond_a
    return-void
.end method


# virtual methods
.method public final b()I
    .registers 2

    const v0, -0x7ffffff6

    return v0
.end method

.method public final b_()V
    .registers 5

    invoke-super {p0}, Lcom/igexin/b/a/d/e;->b_()V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/igexin/push/g/a/c;->a:Lcom/igexin/push/g/a/b;

    if-eqz v0, :cond_9b

    iget-object v0, v0, Lcom/igexin/push/g/a/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/igexin/push/g/a/c;->a:Lcom/igexin/push/g/a/b;

    iget-object v0, v0, Lcom/igexin/push/g/a/b;->c:[B

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/igexin/push/g/a/c;->a:Lcom/igexin/push/g/a/b;

    iget-object v0, v0, Lcom/igexin/push/g/a/b;->c:[B

    array-length v0, v0

    sget v1, Lcom/igexin/push/config/k;->J:I

    mul-int/lit16 v1, v1, 0x400

    if-le v0, v1, :cond_23

    goto/16 :goto_9b

    :cond_23
    iget-object v0, p0, Lcom/igexin/push/g/a/c;->a:Lcom/igexin/push/g/a/b;

    iget-object v0, v0, Lcom/igexin/push/g/a/b;->c:[B

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/igexin/push/g/a/c;->a:Lcom/igexin/push/g/a/b;

    iget-object v0, v0, Lcom/igexin/push/g/a/b;->c:[B

    array-length v0, v0

    if-lez v0, :cond_3a

    iget-object v0, p0, Lcom/igexin/push/g/a/c;->a:Lcom/igexin/push/g/a/b;

    iget-object v1, v0, Lcom/igexin/push/g/a/b;->c:[B

    invoke-static {v1}, Lcom/igexin/b/a/b/f;->c([B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/push/g/a/b;->c:[B

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    const/4 v1, 0x3

    if-ge v0, v1, :cond_9a

    iget-object v1, p0, Lcom/igexin/push/g/a/c;->a:Lcom/igexin/push/g/a/b;

    iget-object v1, v1, Lcom/igexin/push/g/a/b;->c:[B

    if-nez v1, :cond_4d

    iget-object v1, p0, Lcom/igexin/push/g/a/c;->a:Lcom/igexin/push/g/a/b;

    iget-object v1, v1, Lcom/igexin/push/g/a/b;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/igexin/push/g/a/c;->a(Ljava/lang/String;)Lcom/igexin/push/g/a/d;

    move-result-object v1

    goto :goto_59

    :cond_4d
    iget-object v1, p0, Lcom/igexin/push/g/a/c;->a:Lcom/igexin/push/g/a/b;

    iget-object v1, v1, Lcom/igexin/push/g/a/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/igexin/push/g/a/c;->a:Lcom/igexin/push/g/a/b;

    iget-object v2, v2, Lcom/igexin/push/g/a/b;->c:[B

    invoke-direct {p0, v1, v2}, Lcom/igexin/push/g/a/c;->a(Ljava/lang/String;[B)Lcom/igexin/push/g/a/d;

    move-result-object v1

    :goto_59
    iget-boolean v2, v1, Lcom/igexin/push/g/a/d;->a:Z

    if-nez v2, :cond_92

    iget-object v2, v1, Lcom/igexin/push/g/a/d;->b:[B

    if-eqz v2, :cond_67

    iget-object v0, v1, Lcom/igexin/push/g/a/d;->b:[B

    invoke-direct {p0, v0}, Lcom/igexin/push/g/a/c;->a([B)V

    goto :goto_9a

    :cond_67
    const/4 v1, 0x2

    if-eq v0, v1, :cond_6d

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_6d
    iget-object v1, p0, Lcom/igexin/push/g/a/c;->a:Lcom/igexin/push/g/a/b;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "try up to limit"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/igexin/push/g/a/b;->a(Ljava/lang/Exception;)V

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http request exception, try times = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_92
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "http server resp decode header error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9a
    :goto_9a
    return-void

    :cond_9b
    :goto_9b
    invoke-virtual {p0}, Lcom/igexin/push/g/a/c;->p()V

    const-string v0, "_HttpTask|run return ###"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/g/a/c;->n:Z

    return-void
.end method

.method protected e()V
    .registers 1

    return-void
.end method

.method public f()V
    .registers 1

    invoke-super {p0}, Lcom/igexin/b/a/d/e;->f()V

    invoke-direct {p0}, Lcom/igexin/push/g/a/c;->i()V

    return-void
.end method
