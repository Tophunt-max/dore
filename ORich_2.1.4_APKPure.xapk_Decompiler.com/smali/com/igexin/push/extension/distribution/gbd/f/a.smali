###### Class com.igexin.push.extension.distribution.gbd.f.a (com.igexin.push.extension.distribution.gbd.f.a)
.class public Lcom/igexin/push/extension/distribution/gbd/f/a;
.super Lcom/igexin/b/a/d/e;


# instance fields
.field public a:Lcom/igexin/push/extension/distribution/gbd/f/d;

.field private b:Ljava/net/HttpURLConnection;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/igexin/push/extension/distribution/gbd/f/d;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/igexin/b/a/d/e;-><init>(I)V

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->c:Z

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;[B)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    :try_start_4
    new-array v0, v0, [B

    if-eqz p2, :cond_9

    goto :goto_a

    :cond_9
    move-object p2, v0

    :goto_a
    const-string v0, "GT_C_T"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GT_C_K"

    new-instance v1, Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/aj;->b()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GT_C_V"

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/aj;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/igexin/push/extension/distribution/gbd/i/aj;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p2

    const-string v1, "GT_T"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GT_C_S"

    invoke-virtual {p1, v0, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_4 .. :try_end_41} :catchall_42

    goto :goto_46

    :catchall_42
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_46
    return-void
.end method

.method private a(Ljava/util/Map;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    invoke-virtual {v2}, Lcom/igexin/push/extension/distribution/gbd/f/d;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    invoke-virtual {v2}, Lcom/igexin/push/extension/distribution/gbd/f/d;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    invoke-virtual {v2}, Lcom/igexin/push/extension/distribution/gbd/f/d;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    invoke-virtual {v2}, Lcom/igexin/push/extension/distribution/gbd/f/d;->h()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    invoke-virtual {v2}, Lcom/igexin/push/extension/distribution/gbd/f/d;->g()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    invoke-virtual {v2}, Lcom/igexin/push/extension/distribution/gbd/f/d;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    invoke-virtual {v2}, Lcom/igexin/push/extension/distribution/gbd/f/d;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/gbd/f/d;->i()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_69
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    iget-object v4, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    invoke-virtual {v4}, Lcom/igexin/push/extension/distribution/gbd/f/d;->i()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    :cond_87
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/gbd/f/d;->l()[B

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    invoke-virtual {v2}, Lcom/igexin/push/extension/distribution/gbd/f/d;->j()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-direct {p0, v1}, Lcom/igexin/push/extension/distribution/gbd/f/a;->a([B)[B

    move-result-object v1

    goto :goto_a6

    :cond_9a
    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    invoke-virtual {v2}, Lcom/igexin/push/extension/distribution/gbd/f/d;->a()Z

    move-result v2

    if-eqz v2, :cond_a6

    invoke-static {v1}, Lcom/igexin/b/b/a;->b([B)[B

    move-result-object v1
    :try_end_a6
    .catchall {:try_start_1 .. :try_end_a6} :catchall_160

    :cond_a6
    :goto_a6
    if-nez v1, :cond_ac

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/f/a;->i()V

    return-object v0

    :cond_ac
    :try_start_ac
    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v2, Ljava/io/DataOutputStream;

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_bc
    .catchall {:try_start_ac .. :try_end_bc} :catchall_160

    :try_start_bc
    array-length v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_131

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_df

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_df
    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_e5
    .catchall {:try_start_bc .. :try_end_e5} :catchall_15b

    :try_start_e5
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_ea
    .catchall {:try_start_e5 .. :try_end_ea} :catchall_12a

    const/16 v3, 0x400

    :try_start_ec
    new-array v3, v3, [B

    :goto_ee
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_f9

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_ee

    :cond_f9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    if-eqz v3, :cond_140

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/igexin/push/extension/distribution/gbd/f/a;->b(Ljava/net/HttpURLConnection;[B)[B

    move-result-object v0
    :try_end_109
    .catchall {:try_start_ec .. :try_end_109} :catchall_123

    :try_start_109
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    if-eqz p1, :cond_111

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_111
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_114
    .catchall {:try_start_109 .. :try_end_114} :catchall_118

    :goto_114
    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/f/a;->i()V

    goto :goto_11d

    :catchall_118
    move-exception p1

    :try_start_119
    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_11c
    .catchall {:try_start_119 .. :try_end_11c} :catchall_11e

    goto :goto_114

    :goto_11d
    return-object v0

    :catchall_11e
    move-exception p1

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/f/a;->i()V

    throw p1

    :catchall_123
    move-exception v3

    move-object v7, v1

    move-object v1, p1

    move-object p1, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_164

    :catchall_12a
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v7, v1

    move-object v1, p1

    move-object p1, v7

    goto :goto_164

    :cond_131
    :try_start_131
    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    if-eqz p1, :cond_13e

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/igexin/push/extension/distribution/gbd/f/d;->a(I)V
    :try_end_13e
    .catchall {:try_start_131 .. :try_end_13e} :catchall_15b

    :cond_13e
    move-object p1, v0

    move-object v1, p1

    :cond_140
    :try_start_140
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    if-eqz p1, :cond_148

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_148
    if-eqz v1, :cond_14d

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_14d
    .catchall {:try_start_140 .. :try_end_14d} :catchall_151

    :cond_14d
    :goto_14d
    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/f/a;->i()V

    goto :goto_190

    :catchall_151
    move-exception p1

    :try_start_152
    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_155
    .catchall {:try_start_152 .. :try_end_155} :catchall_156

    goto :goto_14d

    :catchall_156
    move-exception p1

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/f/a;->i()V

    throw p1

    :catchall_15b
    move-exception p1

    move-object v1, v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_164

    :catchall_160
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    :goto_164
    :try_start_164
    iget-object v4, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    if-eqz v4, :cond_16b

    invoke-virtual {v4, p1}, Lcom/igexin/push/extension/distribution/gbd/f/d;->a(Ljava/lang/Throwable;)V

    :cond_16b
    const-string v4, "GBDAsyncHttpTask"

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_174
    .catchall {:try_start_164 .. :try_end_174} :catchall_191

    if-eqz v3, :cond_17c

    :try_start_176
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    goto :goto_17c

    :catchall_17a
    move-exception p1

    goto :goto_187

    :cond_17c
    :goto_17c
    if-eqz v1, :cond_181

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_181
    if-eqz v2, :cond_14d

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_186
    .catchall {:try_start_176 .. :try_end_186} :catchall_17a

    goto :goto_14d

    :goto_187
    :try_start_187
    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_18a
    .catchall {:try_start_187 .. :try_end_18a} :catchall_18b

    goto :goto_14d

    :catchall_18b
    move-exception p1

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/f/a;->i()V

    throw p1

    :goto_190
    return-object v0

    :catchall_191
    move-exception p1

    if-eqz v3, :cond_19a

    :try_start_194
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    goto :goto_19a

    :catchall_198
    move-exception v0

    goto :goto_1a5

    :cond_19a
    :goto_19a
    if-eqz v1, :cond_19f

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_19f
    if-eqz v2, :cond_1ae

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1a4
    .catchall {:try_start_194 .. :try_end_1a4} :catchall_198

    goto :goto_1ae

    :goto_1a5
    :try_start_1a5
    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_1a8
    .catchall {:try_start_1a5 .. :try_end_1a8} :catchall_1a9

    goto :goto_1ae

    :catchall_1a9
    move-exception p1

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/f/a;->i()V

    throw p1

    :cond_1ae
    :goto_1ae
    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/f/a;->i()V

    throw p1
.end method

.method private a([B)[B
    .registers 4

    invoke-static {p1}, Lcom/igexin/b/a/b/f;->a([B)[B

    move-result-object p1

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v0, p1}, Lcom/igexin/push/extension/distribution/gbd/f/a;->a(Ljava/net/HttpURLConnection;[B)V

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    const-string v1, "GT_C_S"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/s;->a([B)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/aj;->a([B[B)[B

    move-result-object p1

    :cond_1f
    return-object p1
.end method

.method private b(Ljava/net/HttpURLConnection;[B)[B
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/gbd/f/d;->j()Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/f/d;->b()Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x0

    invoke-static {p2, p1}, Lcom/igexin/push/extension/distribution/gbd/i/c;->a([BI)[B

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/b/a;->c([B)[B

    move-result-object p2

    :cond_1a
    return-object p2

    :cond_1b
    const-string v1, "GT_ERR"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_58

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    goto :goto_58

    :cond_2c
    const-string v1, "GT_T"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_35

    return-object v0

    :cond_35
    const-string v2, "GT_C_S"

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3e

    return-object v0

    :cond_3e
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/push/extension/distribution/gbd/i/s;->a([B)[B

    move-result-object v2

    invoke-static {p2, v2}, Lcom/igexin/push/extension/distribution/gbd/i/aj;->b([B[B)[B

    move-result-object p2

    invoke-static {v1, p2}, Lcom/igexin/push/extension/distribution/gbd/i/aj;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_58

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_59

    if-nez p1, :cond_57

    goto :goto_58

    :cond_57
    return-object p2

    :cond_58
    :goto_58
    return-object v0

    :catchall_59
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private b(Ljava/util/Map;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    invoke-virtual {v2}, Lcom/igexin/push/extension/distribution/gbd/f/d;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    invoke-virtual {v2}, Lcom/igexin/push/extension/distribution/gbd/f/d;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    invoke-virtual {v2}, Lcom/igexin/push/extension/distribution/gbd/f/d;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    invoke-virtual {v2}, Lcom/igexin/push/extension/distribution/gbd/f/d;->h()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    invoke-virtual {v2}, Lcom/igexin/push/extension/distribution/gbd/f/d;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    invoke-virtual {v2}, Lcom/igexin/push/extension/distribution/gbd/f/d;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/gbd/f/d;->i()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    iget-object v4, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    invoke-virtual {v4}, Lcom/igexin/push/extension/distribution/gbd/f/d;->i()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    :cond_7c
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/gbd/f/d;->j()Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v1, v0}, Lcom/igexin/push/extension/distribution/gbd/f/a;->a(Ljava/net/HttpURLConnection;[B)V

    :cond_89
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_8f
    .catchall {:try_start_1 .. :try_end_8f} :catchall_112

    :try_start_8f
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_94
    .catchall {:try_start_8f .. :try_end_94} :catchall_10f

    :try_start_94
    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_e8

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_af

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_af
    const/16 p1, 0x400

    new-array p1, p1, [B

    :goto_b3
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_bf

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_b3

    :cond_bf
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    if-eqz p1, :cond_f5

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/igexin/push/extension/distribution/gbd/f/a;->b(Ljava/net/HttpURLConnection;[B)[B

    move-result-object p1
    :try_end_cf
    .catchall {:try_start_94 .. :try_end_cf} :catchall_10d

    if-eqz v1, :cond_d7

    :try_start_d1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_d7

    :catchall_d5
    move-exception v0

    goto :goto_de

    :cond_d7
    :goto_d7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_da
    .catchall {:try_start_d1 .. :try_end_da} :catchall_d5

    :goto_da
    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/f/a;->i()V

    goto :goto_e2

    :goto_de
    :try_start_de
    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_e3

    goto :goto_da

    :goto_e2
    return-object p1

    :catchall_e3
    move-exception p1

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/f/a;->i()V

    throw p1

    :cond_e8
    :try_start_e8
    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    if-eqz p1, :cond_f5

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/igexin/push/extension/distribution/gbd/f/d;->a(I)V
    :try_end_f5
    .catchall {:try_start_e8 .. :try_end_f5} :catchall_10d

    :cond_f5
    if-eqz v1, :cond_fd

    :try_start_f7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_fd

    :catchall_fb
    move-exception p1

    goto :goto_104

    :cond_fd
    :goto_fd
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_100
    .catchall {:try_start_f7 .. :try_end_100} :catchall_fb

    :cond_100
    :goto_100
    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/f/a;->i()V

    goto :goto_136

    :goto_104
    :try_start_104
    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_107
    .catchall {:try_start_104 .. :try_end_107} :catchall_108

    goto :goto_100

    :catchall_108
    move-exception p1

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/f/a;->i()V

    throw p1

    :catchall_10d
    move-exception p1

    goto :goto_115

    :catchall_10f
    move-exception p1

    move-object v2, v0

    goto :goto_115

    :catchall_112
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    :goto_115
    :try_start_115
    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    if-eqz v3, :cond_11c

    invoke-virtual {v3, p1}, Lcom/igexin/push/extension/distribution/gbd/f/d;->a(Ljava/lang/Throwable;)V

    :cond_11c
    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_11f
    .catchall {:try_start_115 .. :try_end_11f} :catchall_137

    if-eqz v1, :cond_127

    :try_start_121
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_127

    :catchall_125
    move-exception p1

    goto :goto_12d

    :cond_127
    :goto_127
    if-eqz v2, :cond_100

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_12c
    .catchall {:try_start_121 .. :try_end_12c} :catchall_125

    goto :goto_100

    :goto_12d
    :try_start_12d
    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_130
    .catchall {:try_start_12d .. :try_end_130} :catchall_131

    goto :goto_100

    :catchall_131
    move-exception p1

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/f/a;->i()V

    throw p1

    :goto_136
    return-object v0

    :catchall_137
    move-exception p1

    if-eqz v1, :cond_140

    :try_start_13a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_140

    :catchall_13e
    move-exception v0

    goto :goto_146

    :cond_140
    :goto_140
    if-eqz v2, :cond_14f

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_145
    .catchall {:try_start_13a .. :try_end_145} :catchall_13e

    goto :goto_14f

    :goto_146
    :try_start_146
    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_149
    .catchall {:try_start_146 .. :try_end_149} :catchall_14a

    goto :goto_14f

    :catchall_14a
    move-exception p1

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/f/a;->i()V

    throw p1

    :cond_14f
    :goto_14f
    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/f/a;->i()V

    throw p1
.end method

.method private i()V
    .registers 3

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_18

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->b:Ljava/net/HttpURLConnection;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_b

    goto :goto_18

    :catchall_b
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GBDAsyncHttpTask"

    invoke-static {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    :goto_18
    return-void
.end method


# virtual methods
.method public final b()I
    .registers 2

    const v0, -0x7ffffff7

    return v0
.end method

.method public final b_()V
    .registers 6

    const-string v0, "-----------"

    const/16 v1, 0xa

    :try_start_4
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    iget-boolean v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->c:Z

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/igexin/push/extension/distribution/gbd/f/a;->p()V

    return-void

    :cond_f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->c:Z

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    if-nez v1, :cond_17

    return-void

    :cond_17
    iget-object v1, v1, Lcom/igexin/push/extension/distribution/gbd/f/d;->b:[B
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_c0

    const-string v2, "GBDAsyncHttpTask"

    if-eqz v1, :cond_5f

    :try_start_1d
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    iget-object v1, v1, Lcom/igexin/push/extension/distribution/gbd/f/d;->b:[B

    array-length v1, v1

    sget v3, Lcom/igexin/push/extension/distribution/gbd/c/a;->aU:I

    mul-int/lit16 v3, v3, 0x400

    if-le v1, v3, :cond_5f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http data size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    iget-object v1, v1, Lcom/igexin/push/extension/distribution/gbd/f/d;->b:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") > max size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/igexin/push/extension/distribution/gbd/c/a;->aU:I

    mul-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "HttpPlugin length over max size."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/f/d;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_5f
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    invoke-virtual {v1}, Lcom/igexin/push/extension/distribution/gbd/f/d;->m()V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    iget-object v1, v1, Lcom/igexin/push/extension/distribution/gbd/f/d;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6f

    return-void

    :cond_6f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    iget-object v3, v3, Lcom/igexin/push/extension/distribution/gbd/f/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    iget-object v1, v1, Lcom/igexin/push/extension/distribution/gbd/f/d;->b:[B

    if-nez v1, :cond_98

    invoke-direct {p0, v0}, Lcom/igexin/push/extension/distribution/gbd/f/a;->b(Ljava/util/Map;)[B

    move-result-object v1

    goto :goto_9c

    :cond_98
    invoke-direct {p0, v0}, Lcom/igexin/push/extension/distribution/gbd/f/a;->a(Ljava/util/Map;)[B

    move-result-object v1

    :goto_9c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "  headers = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_c4

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->a:Lcom/igexin/push/extension/distribution/gbd/f/d;

    invoke-virtual {v2, v0, v1}, Lcom/igexin/push/extension/distribution/gbd/f/d;->a(Ljava/util/Map;[B)V
    :try_end_bf
    .catchall {:try_start_1d .. :try_end_bf} :catchall_c0

    goto :goto_c4

    :catchall_c0
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_c4
    :goto_c4
    return-void
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/gbd/f/a;->n:Z

    return-void
.end method

.method protected e()V
    .registers 1

    return-void
.end method

.method public f()V
    .registers 1

    invoke-super {p0}, Lcom/igexin/b/a/d/e;->f()V

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/f/a;->i()V

    return-void
.end method
