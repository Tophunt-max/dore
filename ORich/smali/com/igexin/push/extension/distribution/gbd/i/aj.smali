###### Class com.igexin.push.extension.distribution.gbd.i.aj (com.igexin.push.extension.distribution.gbd.i.aj)
.class public Lcom/igexin/push/extension/distribution/gbd/i/aj;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "UTF-8"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return-object v2

    :cond_a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    const/4 v4, 0x0

    if-lt v1, v3, :cond_14

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->X:Ljava/lang/String;

    goto :goto_16

    :cond_14
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->W:Ljava/lang/String;

    :goto_16
    invoke-static {v1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    :try_start_1a
    sget-object v3, Lcom/igexin/push/extension/distribution/gbd/c/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/igexin/push/extension/distribution/gbd/i/s;->a([B)[B

    move-result-object v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v1, p0, v3}, Lcom/igexin/push/extension/distribution/gbd/i/a;->b([B[B[B)Ljava/lang/String;

    move-result-object p0
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_2d

    return-object p0

    :catchall_2d
    move-exception p0

    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public static a(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/aj;->e()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_27

    const-string v1, "getHttpSignature"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v3

    const-class v5, [B

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Lcom/igexin/push/extension/distribution/gbd/i/aj;->a(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    aput-object p1, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_27
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    array-length v1, p0

    array-length v4, p1

    add-int/2addr v1, v4

    new-array v1, v1, [B

    array-length v4, p0

    invoke-static {p0, v3, v1, v3, v4}, Lcom/igexin/push/extension/distribution/gbd/i/g;->a([BI[BII)I

    move-result p0

    array-length v4, p1

    if-lez v4, :cond_3e

    array-length v4, p1

    invoke-static {p1, v3, v1, p0, v4}, Lcom/igexin/push/extension/distribution/gbd/i/g;->a([BI[BII)I

    :cond_3e
    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/i/s;->b([B)[B

    move-result-object p0

    invoke-static {p0, v2}, Lcom/igexin/push/extension/distribution/gbd/i/c;->b([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_47

    return-object p0

    :catchall_47
    move-exception p0

    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 3
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

    invoke-virtual {v0, p0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return-object p0

    :catchall_b
    move-exception p0

    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()V
    .registers 1

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/a;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->V:Ljava/lang/String;

    return-void
.end method

.method public static a([B[B)[B
    .registers 9

    const-class v0, [B

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/aj;->e()Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v2, "aesEncHttp"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v0, v4, v6

    invoke-static {v2, v4}, Lcom/igexin/push/extension/distribution/gbd/i/aj;->a(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    return-object p0

    :cond_27
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->V:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/a;->a([B[B[B)[B

    move-result-object p0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_34

    return-object p0

    :catchall_34
    move-exception p0

    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static b()[B
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/aj;->e()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "getRSAKeyId"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v1, v3}, Lcom/igexin/push/extension/distribution/gbd/i/aj;->a(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    return-object v1

    :cond_1b
    const-string v1, "0378965443503246e2e8ff0ab1fd3221"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_24

    return-object v0

    :catchall_24
    move-exception v1

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static b([B[B)[B
    .registers 9

    const-class v0, [B

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/aj;->e()Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v2, "aesDecHttp"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v0, v4, v6

    invoke-static {v2, v4}, Lcom/igexin/push/extension/distribution/gbd/i/aj;->a(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    return-object p0

    :cond_27
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->V:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/a;->c([B[B[B)[B

    move-result-object p0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_34

    return-object p0

    :catchall_34
    move-exception p0

    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static c()[B
    .registers 4

    const-string v0, "UTF-8"

    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/c;->V:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/aj;->a()V

    :cond_e
    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/c;->V:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/push/extension/distribution/gbd/i/a;->a([B)[B

    move-result-object v2

    const-string v3, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDfHwDefVViKHb6LkTQ3LGK4c5dZESsTAUe/Tf7GlvOIfhl5LjvFcplMztQRIR/vrF1vNzgc/c76fDBlkhg0E6U86PP4JKFbXdJ4n55PfAaYnFprnhLT71vNw1ZURVbd33rYl27nuOmm92YKg+TbL7H+ozzZWMRGTtLnwRig/CdGwIDAQAB"

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/c;->a([BI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/ad;->a([B)Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/igexin/push/extension/distribution/gbd/i/ad;->a([BLjava/security/PublicKey;)[B

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2b

    return-object v0

    :catchall_2b
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    new-array v0, v1, [B

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/aj;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    const-string v1, "getHttpGTCV"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v1, v3}, Lcom/igexin/push/extension/distribution/gbd/i/aj;->a(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_19
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/aj;->c()[B

    move-result-object v1

    const/16 v3, 0x10

    invoke-static {v3}, Lcom/igexin/push/extension/distribution/gbd/i/am;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v4, v3

    array-length v5, v1

    add-int/2addr v4, v5

    new-array v4, v4, [B

    array-length v5, v3

    invoke-static {v3, v2, v4, v2, v5}, Lcom/igexin/push/extension/distribution/gbd/i/g;->a([BI[BII)I

    move-result v3

    array-length v5, v1

    invoke-static {v1, v2, v4, v3, v5}, Lcom/igexin/push/extension/distribution/gbd/i/g;->a([BI[BII)I

    const/4 v1, 0x2

    invoke-static {v4, v1}, Lcom/igexin/push/extension/distribution/gbd/i/c;->b([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3d

    return-object v0

    :catchall_3d
    move-exception v1

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static e()Z
    .registers 1

    :try_start_0
    const-string v0, "com.igexin.push.util.EncryptUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_7

    const/4 v0, 0x1

    return v0

    :catchall_7
    const/4 v0, 0x0

    return v0
.end method
