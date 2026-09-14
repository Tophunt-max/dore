###### Class com.igexin.push.extension.distribution.basic.f.a (com.igexin.push.extension.distribution.basic.f.a)
.class public Lcom/igexin/push/extension/distribution/basic/f/a;
.super Lcom/igexin/b/a/d/e;


# instance fields
.field public a:Lcom/igexin/push/extension/distribution/basic/f/f;

.field public b:Ljava/net/HttpURLConnection;

.field public c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/igexin/push/extension/distribution/basic/f/f;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/igexin/b/a/d/e;-><init>(I)V

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->a:Lcom/igexin/push/extension/distribution/basic/f/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncHttpTask|httpPlugin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/igexin/push/extension/distribution/basic/f/b;
    .registers 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/igexin/push/extension/distribution/basic/f/a;->b(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-direct {p0, p1}, Lcom/igexin/push/extension/distribution/basic/f/a;->a(Ljava/net/HttpURLConnection;)[B

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v0, p1}, Lcom/igexin/push/extension/distribution/basic/f/a;->b(Ljava/net/HttpURLConnection;[B)Lcom/igexin/push/extension/distribution/basic/f/b;

    move-result-object p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_1b
    .catchall {:try_start_0 .. :try_end_12} :catchall_16

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/basic/f/a;->i()V

    return-object p1

    :catchall_16
    move-exception p1

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/basic/f/a;->i()V

    throw p1

    :catch_1b
    :cond_1b
    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/basic/f/a;->i()V

    new-instance p1, Lcom/igexin/push/extension/distribution/basic/f/b;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/igexin/push/extension/distribution/basic/f/b;-><init>(Lcom/igexin/push/extension/distribution/basic/f/a;Z[B)V

    return-object p1
.end method

.method private a(Ljava/lang/String;[B)Lcom/igexin/push/extension/distribution/basic/f/b;
    .registers 7

    const-string v0, "AsyncHttpTask|call httpPost start ###"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_7
    invoke-direct {p0, p2}, Lcom/igexin/push/extension/distribution/basic/f/a;->b([B)Z

    move-result v2

    if-eqz v2, :cond_16

    new-instance p1, Lcom/igexin/push/extension/distribution/basic/f/b;

    invoke-direct {p1, p0, v0, v1}, Lcom/igexin/push/extension/distribution/basic/f/b;-><init>(Lcom/igexin/push/extension/distribution/basic/f/a;Z[B)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_ad
    .catchall {:try_start_7 .. :try_end_12} :catchall_ab

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/basic/f/a;->i()V

    return-object p1

    :cond_16
    :try_start_16
    invoke-direct {p0, p1, p2}, Lcom/igexin/push/extension/distribution/basic/f/a;->b(Ljava/lang/String;[B)Ljava/net/HttpURLConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->b:Ljava/net/HttpURLConnection;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncHttpTask|httpPost() src body len = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-direct {p0, p2, p1}, Lcom/igexin/push/extension/distribution/basic/f/a;->a([BLjava/net/HttpURLConnection;)[B

    move-result-object p1

    if-nez p1, :cond_48

    const-string p1, "AsyncHttpTask|httpPost() getEncHttpData body = null"

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/igexin/push/extension/distribution/basic/f/b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2, v1}, Lcom/igexin/push/extension/distribution/basic/f/b;-><init>(Lcom/igexin/push/extension/distribution/basic/f/a;Z[B)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_44} :catch_ad
    .catchall {:try_start_16 .. :try_end_44} :catchall_ab

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/basic/f/a;->i()V

    return-object p1

    :cond_48
    :try_start_48
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncHttpTask|httpPost() getEncHttpData len = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->connect()V

    new-instance p2, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {p2, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_6d} :catch_ad
    .catchall {:try_start_48 .. :try_end_6d} :catchall_ab

    :try_start_6d
    array-length v2, p1

    invoke-virtual {p2, p1, v0, v2}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V

    const-string p1, "AsyncHttpTask|httpPost() write and flush"

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-direct {p0, p1}, Lcom/igexin/push/extension/distribution/basic/f/a;->a(Ljava/net/HttpURLConnection;)[B

    move-result-object p1

    if-eqz p1, :cond_a3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AsyncHttpTask|httpPost() server resp len ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v2, p1}, Lcom/igexin/push/extension/distribution/basic/f/a;->b(Ljava/net/HttpURLConnection;[B)Lcom/igexin/push/extension/distribution/basic/f/b;

    move-result-object p1
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_9c} :catch_a9
    .catchall {:try_start_6d .. :try_end_9c} :catchall_d5

    :try_start_9c
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9f} :catch_9f

    :catch_9f
    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/basic/f/a;->i()V

    return-object p1

    :cond_a3
    :try_start_a3
    const-string p1, "AsyncHttpTask|httpPost() server resp is null"

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a8} :catch_a9
    .catchall {:try_start_a3 .. :try_end_a8} :catchall_d5

    goto :goto_c9

    :catch_a9
    move-exception p1

    goto :goto_af

    :catchall_ab
    move-exception p1

    goto :goto_d7

    :catch_ad
    move-exception p1

    move-object p2, v1

    :goto_af
    :try_start_af
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AsyncHttpTask httpPost|error|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_c7
    .catchall {:try_start_af .. :try_end_c7} :catchall_d5

    if-eqz p2, :cond_cc

    :goto_c9
    :try_start_c9
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_cc} :catch_cc

    :catch_cc
    :cond_cc
    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/basic/f/a;->i()V

    new-instance p1, Lcom/igexin/push/extension/distribution/basic/f/b;

    invoke-direct {p1, p0, v0, v1}, Lcom/igexin/push/extension/distribution/basic/f/b;-><init>(Lcom/igexin/push/extension/distribution/basic/f/a;Z[B)V

    return-object p1

    :catchall_d5
    move-exception p1

    move-object v1, p2

    :goto_d7
    if-eqz v1, :cond_dc

    :try_start_d9
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_dc} :catch_dc

    :catch_dc
    :cond_dc
    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/basic/f/a;->i()V

    throw p1
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.igexin.push.util.EncryptUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "invokeMethod error"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/net/HttpURLConnection;[B)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    new-array v1, v0, [B

    if-eqz p2, :cond_9

    goto :goto_a

    :cond_9
    move-object p2, v1

    :goto_a
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GT_C_T"

    invoke-virtual {p1, v3, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Class;

    const-string v4, "getRSAKeyId"

    invoke-direct {p0, v4, v3}, Lcom/igexin/push/extension/distribution/basic/f/a;->a(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "GT_C_K"

    invoke-virtual {p1, v3, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v0, [Ljava/lang/Class;

    const-string v3, "getHttpGTCV"

    invoke-direct {p0, v3, v2}, Lcom/igexin/push/extension/distribution/basic/f/a;->a(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "GT_C_V"

    invoke-virtual {p1, v3, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v0

    const-class v6, [B

    aput-object v6, v4, v1

    const-string v6, "getHttpSignature"

    invoke-direct {p0, v6, v4}, Lcom/igexin/push/extension/distribution/basic/f/a;->a(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    aput-object p2, v3, v1

    invoke-virtual {v4, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "GT_T"

    invoke-virtual {p1, v0, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GT_C_S"

    invoke-virtual {p1, v0, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a([B)V
    .registers 3

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->a:Lcom/igexin/push/extension/distribution/basic/f/f;

    invoke-virtual {v0, p1}, Lcom/igexin/push/extension/distribution/basic/f/f;->a([B)V

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->a:Lcom/igexin/push/extension/distribution/basic/f/f;

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
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_47
    .catchall {:try_start_1 .. :try_end_5} :catchall_44

    :try_start_5
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_40
    .catchall {:try_start_5 .. :try_end_a} :catchall_3c

    :try_start_a
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v3, 0xc8

    if-ne p1, v3, :cond_2f

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
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_26} :catch_3a
    .catchall {:try_start_a .. :try_end_26} :catchall_38

    if-eqz v1, :cond_2b

    :try_start_28
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2b

    :catch_2b
    :cond_2b
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_2e

    :catch_2e
    return-object p1

    :cond_2f
    if-eqz v1, :cond_34

    :try_start_31
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_34

    :catch_34
    :cond_34
    :try_start_34
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_37

    :catch_37
    return-object v0

    :catchall_38
    move-exception p1

    goto :goto_3e

    :catch_3a
    move-exception p1

    goto :goto_42

    :catchall_3c
    move-exception p1

    move-object v2, v0

    :goto_3e
    move-object v0, v1

    goto :goto_4b

    :catch_40
    move-exception p1

    move-object v2, v0

    :goto_42
    move-object v0, v1

    goto :goto_49

    :catchall_44
    move-exception p1

    move-object v2, v0

    goto :goto_4b

    :catch_47
    move-exception p1

    move-object v2, v0

    :goto_49
    :try_start_49
    throw p1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception p1

    :goto_4b
    if-eqz v0, :cond_52

    :try_start_4d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_52

    :catch_51
    nop

    :cond_52
    :goto_52
    if-eqz v2, :cond_57

    :try_start_54
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_57

    :catch_57
    :cond_57
    throw p1
.end method

.method private a([BLjava/net/HttpURLConnection;)[B
    .registers 10

    const-class v0, [B

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AsyncHttpTask|getEncHttpData|isUseAES = |"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->c:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->c:Z

    if-eqz v2, :cond_59

    const-string v2, "GT_C_S"

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_77

    const-string v2, "aesEncHttp"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v0, v4, v6

    invoke-direct {p0, v2, v4}, Lcom/igexin/push/extension/distribution/basic/f/a;->a(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const-string p1, "md5"

    new-array v4, v6, [Ljava/lang/Class;

    aput-object v0, v4, v5

    invoke-direct {p0, p1, v4}, Lcom/igexin/push/extension/distribution/basic/f/a;->a(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    aput-object p2, v0, v5

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    return-object p1

    :cond_59
    invoke-static {p1}, Lcom/igexin/push/extension/distribution/basic/j/n;->a([B)[B

    move-result-object p1
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5e

    return-object p1

    :catchall_5e
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AsyncHttpTask|getEncHttpData|error|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_77
    return-object v1
.end method

.method private b(Ljava/net/HttpURLConnection;[B)Lcom/igexin/push/extension/distribution/basic/f/b;
    .registers 13

    const-class v0, [B

    const-string v1, "AsyncHttpTask|authAndDecResp start ~~~"

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_9
    iget-boolean v3, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->c:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_fd

    const-string v3, "GT_ERR"

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->l:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|GT_ERR = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    if-eqz v3, :cond_f7

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    goto/16 :goto_f7

    :cond_39
    const-string v3, "GT_T"

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "|GT_T = null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/igexin/push/extension/distribution/basic/f/b;

    invoke-direct {p1, p0, v2, v1}, Lcom/igexin/push/extension/distribution/basic/f/b;-><init>(Lcom/igexin/push/extension/distribution/basic/f/a;Z[B)V

    return-object p1

    :cond_5d
    const-string v5, "GT_C_S"

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_81

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "|GT_C_S = null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/igexin/push/extension/distribution/basic/f/b;

    invoke-direct {p1, p0, v2, v1}, Lcom/igexin/push/extension/distribution/basic/f/b;-><init>(Lcom/igexin/push/extension/distribution/basic/f/a;Z[B)V

    return-object p1

    :cond_81
    const-string v5, "aesDecHttp"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v0, v7, v4

    aput-object v0, v7, v2

    invoke-direct {p0, v5, v7}, Lcom/igexin/push/extension/distribution/basic/f/a;->a(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Object;

    aput-object p2, v7, v4

    const-string p2, "md5"

    new-array v8, v2, [Ljava/lang/Class;

    aput-object v0, v8, v4

    invoke-direct {p0, p2, v8}, Lcom/igexin/push/extension/distribution/basic/f/a;->a(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {p2, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v7, v2

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    check-cast p2, [B

    const-string v5, "getHttpSignature"

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v4

    aput-object v0, v7, v2

    invoke-direct {p0, v5, v7}, Lcom/igexin/push/extension/distribution/basic/f/a;->a(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v3, v5, v4

    aput-object p2, v5, v2

    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_db

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d5

    goto :goto_db

    :cond_d5
    new-instance p1, Lcom/igexin/push/extension/distribution/basic/f/b;

    invoke-direct {p1, p0, v4, p2}, Lcom/igexin/push/extension/distribution/basic/f/b;-><init>(Lcom/igexin/push/extension/distribution/basic/f/a;Z[B)V

    return-object p1

    :cond_db
    :goto_db
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "|signature = null or error"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/igexin/push/extension/distribution/basic/f/b;

    invoke-direct {p1, p0, v2, v1}, Lcom/igexin/push/extension/distribution/basic/f/b;-><init>(Lcom/igexin/push/extension/distribution/basic/f/a;Z[B)V

    return-object p1

    :cond_f7
    :goto_f7
    new-instance p1, Lcom/igexin/push/extension/distribution/basic/f/b;

    invoke-direct {p1, p0, v2, v1}, Lcom/igexin/push/extension/distribution/basic/f/b;-><init>(Lcom/igexin/push/extension/distribution/basic/f/a;Z[B)V

    return-object p1

    :cond_fd
    iget-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->a:Lcom/igexin/push/extension/distribution/basic/f/f;

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/basic/f/f;->f()Z

    move-result p1

    if-eqz p1, :cond_109

    invoke-static {p2, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p2

    :cond_109
    iget-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->a:Lcom/igexin/push/extension/distribution/basic/f/f;

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/basic/f/f;->e()Z

    move-result p1

    if-eqz p1, :cond_115

    invoke-static {p2}, Lcom/igexin/push/extension/distribution/basic/j/n;->b([B)[B

    move-result-object p2

    :cond_115
    new-instance p1, Lcom/igexin/push/extension/distribution/basic/f/b;

    invoke-direct {p1, p0, v4, p2}, Lcom/igexin/push/extension/distribution/basic/f/b;-><init>(Lcom/igexin/push/extension/distribution/basic/f/a;Z[B)V
    :try_end_11a
    .catchall {:try_start_9 .. :try_end_11a} :catchall_11b

    return-object p1

    :catchall_11b
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AsyncHttpTask|authAndDecResp|error|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/igexin/push/extension/distribution/basic/f/b;

    invoke-direct {p1, p0, v2, v1}, Lcom/igexin/push/extension/distribution/basic/f/b;-><init>(Lcom/igexin/push/extension/distribution/basic/f/a;Z[B)V

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 3

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->b:Ljava/net/HttpURLConnection;

    const/16 v0, 0x4e20

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->b:Ljava/net/HttpURLConnection;

    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->b:Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-boolean p1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->c:Z

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->b:Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/igexin/push/extension/distribution/basic/f/a;->a(Ljava/net/HttpURLConnection;[B)V

    :cond_2e
    iget-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->b:Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method private b(Ljava/lang/String;[B)Ljava/net/HttpURLConnection;
    .registers 5

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->b:Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->b:Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->b:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->b:Ljava/net/HttpURLConnection;

    const-string v0, "Content-Type"

    const-string v1, "application/octet-stream"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->b:Ljava/net/HttpURLConnection;

    const/16 v0, 0x4e20

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-boolean p1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->c:Z

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-direct {p0, p1, p2}, Lcom/igexin/push/extension/distribution/basic/f/a;->a(Ljava/net/HttpURLConnection;[B)V

    :cond_46
    iget-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->b:Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method private b([B)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    array-length p1, p1

    div-int/lit16 p1, p1, 0x400

    sget v1, Lcom/igexin/push/extension/distribution/basic/c/g;->o:I

    if-le p1, v1, :cond_28

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|http body size exceed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/igexin/push/extension/distribution/basic/c/g;->o:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_28
    return v0
.end method

.method private i()V
    .registers 2

    const-string v0, "AsyncHttpTask call closeHttpURLConnection"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->b:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_f

    :try_start_9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->b:Ljava/net/HttpURLConnection;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_f

    :catch_f
    :cond_f
    return-void
.end method

.method private j()Z
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->a:Lcom/igexin/push/extension/distribution/basic/f/f;

    iget-boolean v0, v0, Lcom/igexin/push/extension/distribution/basic/f/f;->e:Z

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/igexin/push/extension/distribution/basic/j/c;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method


# virtual methods
.method public final b()I
    .registers 2

    const v0, -0x7ffffff7

    return v0
.end method

.method public final b_()V
    .registers 5

    invoke-super {p0}, Lcom/igexin/b/a/d/e;->b_()V

    :try_start_3
    iget-boolean v0, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->d:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/igexin/push/extension/distribution/basic/f/a;->p()V

    return-void

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->d:Z

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->a:Lcom/igexin/push/extension/distribution/basic/f/f;

    if-nez v0, :cond_18

    return-void

    :cond_18
    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/basic/f/f;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    return-void

    :cond_1f
    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/basic/f/a;->j()Z

    move-result v1

    iput-boolean v1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->c:Z

    if-eqz v1, :cond_56

    const-string v1, "isLoadSuccess"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-direct {p0, v1, v3}, Lcom/igexin/push/extension/distribution/basic/f/a;->a(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_56

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|so load failed! AsyncHttpTask return!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-void

    :cond_56
    iget-boolean v1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->c:Z

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->a:Lcom/igexin/push/extension/distribution/basic/f/f;

    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/basic/f/f;->d()[B

    move-result-object v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->a:Lcom/igexin/push/extension/distribution/basic/f/f;

    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/basic/f/f;->d()[B

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_78

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->a:Lcom/igexin/push/extension/distribution/basic/f/f;

    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/basic/f/f;->d()[B

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/b/a/b/f;->a([B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/igexin/push/extension/distribution/basic/f/f;->b([B)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_78} :catch_d6

    :cond_78
    :try_start_78
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->a:Lcom/igexin/push/extension/distribution/basic/f/f;

    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/basic/f/f;->d()[B

    move-result-object v1

    if-nez v1, :cond_85

    invoke-direct {p0, v0}, Lcom/igexin/push/extension/distribution/basic/f/a;->a(Ljava/lang/String;)Lcom/igexin/push/extension/distribution/basic/f/b;

    move-result-object v0

    goto :goto_8f

    :cond_85
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->a:Lcom/igexin/push/extension/distribution/basic/f/f;

    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/basic/f/f;->d()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/igexin/push/extension/distribution/basic/f/a;->a(Ljava/lang/String;[B)Lcom/igexin/push/extension/distribution/basic/f/b;

    move-result-object v0
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_8f} :catch_b7

    :goto_8f
    :try_start_8f
    iget-boolean v1, v0, Lcom/igexin/push/extension/distribution/basic/f/b;->a:Z

    if-nez v1, :cond_aa

    iget-object v1, v0, Lcom/igexin/push/extension/distribution/basic/f/b;->b:[B

    if-eqz v1, :cond_9d

    iget-object v0, v0, Lcom/igexin/push/extension/distribution/basic/f/b;->b:[B

    invoke-direct {p0, v0}, Lcom/igexin/push/extension/distribution/basic/f/a;->a([B)V

    return-void

    :cond_9d
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Http response exception"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->a:Lcom/igexin/push/extension/distribution/basic/f/f;

    invoke-virtual {v1, v0}, Lcom/igexin/push/extension/distribution/basic/f/f;->a(Ljava/lang/Exception;)V

    throw v0

    :cond_aa
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "http server resp decode header error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->a:Lcom/igexin/push/extension/distribution/basic/f/f;

    invoke-virtual {v1, v0}, Lcom/igexin/push/extension/distribution/basic/f/f;->a(Ljava/lang/Exception;)V

    throw v0

    :catch_b7
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncHttpTask|run() post or get error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->a:Lcom/igexin/push/extension/distribution/basic/f/f;

    invoke-virtual {v1, v0}, Lcom/igexin/push/extension/distribution/basic/f/f;->a(Ljava/lang/Exception;)V

    throw v0
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_d6} :catch_d6

    :catch_d6
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncHttpTask|run() error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    throw v0
.end method

.method public d()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->n:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncHttpTask initTask()|isBloker = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "|isCycle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/igexin/push/extension/distribution/basic/f/a;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected e()V
    .registers 1

    return-void
.end method

.method public f()V
    .registers 2

    const-string v0, "AsyncHttpTask|dispose()|closeHttpURLConnection"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/igexin/b/a/d/e;->f()V

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/basic/f/a;->i()V

    return-void
.end method
