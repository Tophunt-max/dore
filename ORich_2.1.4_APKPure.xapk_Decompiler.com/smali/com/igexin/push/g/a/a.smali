###### Class com.igexin.push.g.a.a (com.igexin.push.g.a.a)
.class public Lcom/igexin/push/g/a/a;
.super Lcom/igexin/b/a/d/e;


# static fields
.field public static final a:Ljava/lang/String; = "com.igexin.push.g.a.a"


# instance fields
.field public b:Lcom/igexin/push/g/a/b;

.field private c:Ljava/net/HttpURLConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/igexin/push/g/a/b;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/igexin/b/a/d/e;-><init>(I)V

    iput-object p1, p0, Lcom/igexin/push/g/a/a;->b:Lcom/igexin/push/g/a/b;

    return-void
.end method

.method private a(Ljava/lang/String;)[B
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/igexin/push/g/a/a;->c:Ljava/net/HttpURLConnection;

    const/16 v1, 0x4e20

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object p1, p0, Lcom/igexin/push/g/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object p1, p0, Lcom/igexin/push/g/a/a;->c:Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/igexin/push/g/a/a;->c:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object p1, p0, Lcom/igexin/push/g/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_7f
    .catchall {:try_start_1 .. :try_end_2b} :catchall_6b

    :try_start_2b
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_30} :catch_69
    .catchall {:try_start_2b .. :try_end_30} :catchall_64

    :try_start_30
    iget-object v2, p0, Lcom/igexin/push/g/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_5a

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_3e
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4a

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3e

    :cond_4a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_4e} :catch_62
    .catchall {:try_start_30 .. :try_end_4e} :catchall_60

    if-eqz p1, :cond_53

    :try_start_50
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_53

    :catch_53
    :cond_53
    :try_start_53
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_56

    :catch_56
    invoke-direct {p0}, Lcom/igexin/push/g/a/a;->i()V

    return-object v0

    :cond_5a
    if-eqz p1, :cond_8a

    :try_start_5c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_8a

    goto :goto_8a

    :catchall_60
    move-exception v0

    goto :goto_6f

    :catch_62
    nop

    goto :goto_81

    :catchall_64
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_6f

    :catch_69
    move-object v1, v0

    goto :goto_81

    :catchall_6b
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    :goto_6f
    if-eqz p1, :cond_76

    :try_start_71
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_76

    :catch_75
    nop

    :cond_76
    :goto_76
    if-eqz v1, :cond_7b

    :try_start_78
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_7b

    :catch_7b
    :cond_7b
    invoke-direct {p0}, Lcom/igexin/push/g/a/a;->i()V

    throw v0

    :catch_7f
    move-object p1, v0

    move-object v1, p1

    :goto_81
    if-eqz p1, :cond_88

    :try_start_83
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_88

    :catch_87
    nop

    :cond_88
    :goto_88
    if-eqz v1, :cond_8d

    :catch_8a
    :cond_8a
    :goto_8a
    :try_start_8a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_8d

    :catch_8d
    :cond_8d
    invoke-direct {p0}, Lcom/igexin/push/g/a/a;->i()V

    return-object v0
.end method

.method private a(Ljava/lang/String;[B)[B
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/igexin/push/g/a/a;->c:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object p1, p0, Lcom/igexin/push/g/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object p1, p0, Lcom/igexin/push/g/a/a;->c:Ljava/net/HttpURLConnection;

    const-string v2, "POST"

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/igexin/push/g/a/a;->c:Ljava/net/HttpURLConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object p1, p0, Lcom/igexin/push/g/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object p1, p0, Lcom/igexin/push/g/a/a;->c:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    const-string v3, "application/octet-stream"

    invoke-virtual {p1, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/igexin/push/g/a/a;->c:Ljava/net/HttpURLConnection;

    const/16 v1, 0x4e20

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object p1, p0, Lcom/igexin/push/g/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object p1, p0, Lcom/igexin/push/g/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    new-instance p1, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/igexin/push/g/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4e} :catch_c0
    .catchall {:try_start_1 .. :try_end_4e} :catchall_a4

    :try_start_4e
    array-length v1, p2

    invoke-virtual {p1, p2, v2, v1}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    iget-object p2, p0, Lcom/igexin/push/g/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_99

    iget-object p2, p0, Lcom/igexin/push/g/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_65} :catch_a2
    .catchall {:try_start_4e .. :try_end_65} :catchall_9d

    :try_start_65
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6a} :catch_97
    .catchall {:try_start_65 .. :try_end_6a} :catchall_92

    const/16 v3, 0x400

    :try_start_6c
    new-array v3, v3, [B

    :goto_6e
    invoke-virtual {p2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_79

    invoke-virtual {v1, v3, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_6e

    :cond_79
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_7d} :catch_90
    .catchall {:try_start_6c .. :try_end_7d} :catchall_8e

    :try_start_7d
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_82

    :catch_81
    nop

    :goto_82
    if-eqz p2, :cond_87

    :try_start_84
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_87

    :catch_87
    :cond_87
    :try_start_87
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_8a

    :catch_8a
    invoke-direct {p0}, Lcom/igexin/push/g/a/a;->i()V

    return-object v0

    :catchall_8e
    move-exception v0

    goto :goto_a9

    :catch_90
    nop

    goto :goto_c3

    :catchall_92
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_a9

    :catch_97
    move-object v1, v0

    goto :goto_c3

    :cond_99
    :try_start_99
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_d6

    goto :goto_d6

    :catchall_9d
    move-exception p2

    move-object v1, v0

    move-object v0, p2

    move-object p2, v1

    goto :goto_a9

    :catch_a2
    move-object p2, v0

    goto :goto_c2

    :catchall_a4
    move-exception p1

    move-object p2, v0

    move-object v1, p2

    move-object v0, p1

    move-object p1, v1

    :goto_a9
    if-eqz p1, :cond_b0

    :try_start_ab
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ae} :catch_af

    goto :goto_b0

    :catch_af
    nop

    :cond_b0
    :goto_b0
    if-eqz p2, :cond_b7

    :try_start_b2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_b6

    goto :goto_b7

    :catch_b6
    nop

    :cond_b7
    :goto_b7
    if-eqz v1, :cond_bc

    :try_start_b9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_bc} :catch_bc

    :catch_bc
    :cond_bc
    invoke-direct {p0}, Lcom/igexin/push/g/a/a;->i()V

    throw v0

    :catch_c0
    move-object p1, v0

    move-object p2, p1

    :goto_c2
    move-object v1, p2

    :goto_c3
    if-eqz p1, :cond_ca

    :try_start_c5
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_c8} :catch_c9

    goto :goto_ca

    :catch_c9
    nop

    :cond_ca
    :goto_ca
    if-eqz p2, :cond_d1

    :try_start_cc
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_cf} :catch_d0

    goto :goto_d1

    :catch_d0
    nop

    :cond_d1
    :goto_d1
    if-eqz v1, :cond_d6

    :try_start_d3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d6} :catch_d6

    :catch_d6
    :cond_d6
    :goto_d6
    invoke-direct {p0}, Lcom/igexin/push/g/a/a;->i()V

    return-object v0
.end method

.method private i()V
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/g/a/a;->c:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_a

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igexin/push/g/a/a;->c:Ljava/net/HttpURLConnection;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_a

    :catch_a
    :cond_a
    return-void
.end method


# virtual methods
.method public final b()I
    .registers 2

    const v0, -0x7ffffff7

    return v0
.end method

.method public final b_()V
    .registers 3

    invoke-super {p0}, Lcom/igexin/b/a/d/e;->b_()V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/igexin/push/g/a/a;->b:Lcom/igexin/push/g/a/b;

    if-eqz v0, :cond_70

    iget-object v0, v0, Lcom/igexin/push/g/a/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/igexin/push/g/a/a;->b:Lcom/igexin/push/g/a/b;

    iget-object v0, v0, Lcom/igexin/push/g/a/b;->c:[B

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/igexin/push/g/a/a;->b:Lcom/igexin/push/g/a/b;

    iget-object v0, v0, Lcom/igexin/push/g/a/b;->c:[B

    array-length v0, v0

    sget v1, Lcom/igexin/push/config/k;->J:I

    mul-int/lit16 v1, v1, 0x400

    if-le v0, v1, :cond_22

    goto :goto_70

    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/igexin/push/g/a/a;->b:Lcom/igexin/push/g/a/b;

    iget-object v0, v0, Lcom/igexin/push/g/a/b;->c:[B

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/igexin/push/g/a/a;->b:Lcom/igexin/push/g/a/b;

    iget-object v0, v0, Lcom/igexin/push/g/a/b;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/igexin/push/g/a/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_3d

    :cond_31
    iget-object v0, p0, Lcom/igexin/push/g/a/a;->b:Lcom/igexin/push/g/a/b;

    iget-object v0, v0, Lcom/igexin/push/g/a/b;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/igexin/push/g/a/a;->b:Lcom/igexin/push/g/a/b;

    iget-object v1, v1, Lcom/igexin/push/g/a/b;->c:[B

    invoke-direct {p0, v0, v1}, Lcom/igexin/push/g/a/a;->a(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3d} :catch_69

    :goto_3d
    if-eqz v0, :cond_5c

    :try_start_3f
    iget-object v1, p0, Lcom/igexin/push/g/a/a;->b:Lcom/igexin/push/g/a/b;

    invoke-virtual {v1, v0}, Lcom/igexin/push/g/a/b;->a([B)V

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/g/a/a;->b:Lcom/igexin/push/g/a/b;

    invoke-virtual {v0, v1}, Lcom/igexin/b/a/b/c;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/b/a/b/c;->c()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_54} :catch_55

    return-void

    :catch_55
    move-exception v0

    iget-object v1, p0, Lcom/igexin/push/g/a/a;->b:Lcom/igexin/push/g/a/b;

    invoke-virtual {v1, v0}, Lcom/igexin/push/g/a/b;->a(Ljava/lang/Exception;)V

    throw v0

    :cond_5c
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Http response \uff1d\uff1d null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/push/g/a/a;->b:Lcom/igexin/push/g/a/b;

    invoke-virtual {v1, v0}, Lcom/igexin/push/g/a/b;->a(Ljava/lang/Exception;)V

    throw v0

    :catch_69
    move-exception v0

    iget-object v1, p0, Lcom/igexin/push/g/a/a;->b:Lcom/igexin/push/g/a/b;

    invoke-virtual {v1, v0}, Lcom/igexin/push/g/a/b;->a(Ljava/lang/Exception;)V

    throw v0

    :cond_70
    :goto_70
    invoke-virtual {p0}, Lcom/igexin/push/g/a/a;->p()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/g/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|run return ###"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/g/a/a;->n:Z

    return-void
.end method

.method protected e()V
    .registers 1

    return-void
.end method

.method public f()V
    .registers 1

    invoke-super {p0}, Lcom/igexin/b/a/d/e;->f()V

    invoke-direct {p0}, Lcom/igexin/push/g/a/a;->i()V

    return-void
.end method
