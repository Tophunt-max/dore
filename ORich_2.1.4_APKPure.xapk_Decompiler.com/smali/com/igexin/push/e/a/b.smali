###### Class com.igexin.push.e.a.b (com.igexin.push.e.a.b)
.class public Lcom/igexin/push/e/a/b;
.super Lcom/igexin/b/a/b/b;


# static fields
.field public static final a:Ljava/lang/String; = "com.igexin.push.e.a.b"

.field public static b:I = -0x1


# instance fields
.field private g:[B


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/igexin/b/a/b/b;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Lcom/igexin/b/a/b/a/a/o;)B
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/igexin/push/e/a/b;->b(Lcom/igexin/b/a/b/a/a/o;I)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method

.method public static a()Lcom/igexin/b/a/b/b;
    .registers 3

    new-instance v0, Lcom/igexin/push/e/a/b;

    const-string v1, "socketProtocol"

    invoke-direct {v0, v1}, Lcom/igexin/push/e/a/b;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/igexin/push/e/a/a;

    const-string v2, "command"

    invoke-direct {v1, v2, v0}, Lcom/igexin/push/e/a/a;-><init>(Ljava/lang/String;Lcom/igexin/b/a/b/b;)V

    return-object v0
.end method

.method private a(Lcom/igexin/b/a/b/e;Lcom/igexin/b/a/b/d;Lcom/igexin/b/a/b/a/a/o;Lcom/igexin/push/e/c/g;)Lcom/igexin/b/a/d/a/e;
    .registers 13

    iget-byte v0, p4, Lcom/igexin/push/e/c/g;->h:B

    const/16 v1, 0x30

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    return-object v2

    :cond_8
    invoke-direct {p0, p3}, Lcom/igexin/push/e/a/b;->a(Lcom/igexin/b/a/b/a/a/o;)B

    move-result v0

    if-lez v0, :cond_11

    invoke-direct {p0, p3, v0}, Lcom/igexin/push/e/a/b;->a(Lcom/igexin/b/a/b/a/a/o;I)[B

    :cond_11
    invoke-direct {p0, p3}, Lcom/igexin/push/e/a/b;->a(Lcom/igexin/b/a/b/a/a/o;)B

    move-result v0

    iput v0, p4, Lcom/igexin/push/e/c/g;->f:I

    invoke-direct {p0, p3}, Lcom/igexin/push/e/a/b;->a(Lcom/igexin/b/a/b/a/a/o;)B

    move-result v0

    iput v0, p4, Lcom/igexin/push/e/c/g;->o:I

    iget v0, p4, Lcom/igexin/push/e/c/g;->o:I

    if-lez v0, :cond_29

    iget v0, p4, Lcom/igexin/push/e/c/g;->o:I

    invoke-direct {p0, p3, v0}, Lcom/igexin/push/e/a/b;->a(Lcom/igexin/b/a/b/a/a/o;I)[B

    move-result-object v0

    iput-object v0, p4, Lcom/igexin/push/e/c/g;->n:[B

    :cond_29
    iget v0, p4, Lcom/igexin/push/e/c/g;->e:I

    if-nez v0, :cond_41

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    new-instance p2, Lcom/igexin/push/e/c/h;

    invoke-direct {p2}, Lcom/igexin/push/e/c/h;-><init>()V

    invoke-virtual {p1, p2}, Lcom/igexin/b/a/b/c;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/b/a/b/c;->c()V

    return-object v2

    :cond_41
    const/16 v0, 0xb

    invoke-direct {p0, p3, v0}, Lcom/igexin/push/e/a/b;->a(Lcom/igexin/b/a/b/a/a/o;I)[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/igexin/b/a/b/f;->d([BI)I

    move-result v3

    sget v4, Lcom/igexin/push/e/a/b;->b:I

    if-le v3, v4, :cond_112

    sput v3, Lcom/igexin/push/e/a/b;->b:I

    const/4 v4, 0x4

    invoke-static {v0, v4}, Lcom/igexin/b/a/b/f;->d([BI)I

    move-result v4

    const/16 v5, 0x8

    invoke-static {v0, v5}, Lcom/igexin/b/a/b/f;->b([BI)S

    move-result v5

    const/16 v6, 0xa

    invoke-static {v0, v6}, Lcom/igexin/b/a/b/f;->a([BI)I

    move-result v0

    new-instance v6, Lcom/igexin/push/e/c/b;

    invoke-direct {v6}, Lcom/igexin/push/e/c/b;-><init>()V

    iput v5, v6, Lcom/igexin/push/e/c/b;->a:I

    int-to-byte v7, v0

    iput-byte v7, v6, Lcom/igexin/push/e/c/b;->b:B

    iget v7, p4, Lcom/igexin/push/e/c/g;->c:I

    iput v7, v6, Lcom/igexin/push/e/c/b;->f:I

    iget-byte v7, p4, Lcom/igexin/push/e/c/g;->h:B

    iput-byte v7, v6, Lcom/igexin/push/e/c/b;->g:B

    if-lez v5, :cond_de

    invoke-direct {p0, p3, v5}, Lcom/igexin/push/e/a/b;->a(Lcom/igexin/b/a/b/a/a/o;I)[B

    move-result-object p3

    iget-byte v5, p4, Lcom/igexin/push/e/c/g;->h:B

    const/16 v7, 0x10

    if-ne v5, v7, :cond_8e

    invoke-static {v4}, Lcom/igexin/b/a/b/f;->b(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/push/util/EncryptUtils;->getIV([B)[B

    move-result-object v0

    invoke-static {p3, v0}, Lcom/igexin/push/util/EncryptUtils;->aesDecSocket([B[B)[B

    move-result-object p3

    goto :goto_a6

    :cond_8e
    iget-byte v5, p4, Lcom/igexin/push/e/c/g;->h:B

    const/16 v7, 0x20

    if-ne v5, v7, :cond_a2

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_99

    return-object v2

    :cond_99
    invoke-static {v4}, Lcom/igexin/b/a/b/f;->b(I)[B

    move-result-object v0

    invoke-static {p3, v0}, Lcom/igexin/push/util/EncryptUtils;->altAesDecSocket([B[B)[B

    move-result-object p3

    goto :goto_a6

    :cond_a2
    iget-byte v0, p4, Lcom/igexin/push/e/c/g;->h:B

    if-nez v0, :cond_db

    :goto_a6
    iget-byte v0, p4, Lcom/igexin/push/e/c/g;->g:B

    const/16 v1, -0x80

    if-ne v0, v1, :cond_b1

    invoke-static {p3}, Lcom/igexin/b/a/b/f;->d([B)[B

    move-result-object p3

    goto :goto_b5

    :cond_b1
    iget-byte v0, p4, Lcom/igexin/push/e/c/g;->g:B

    if-nez v0, :cond_da

    :goto_b5
    invoke-virtual {v6, p3}, Lcom/igexin/push/e/c/b;->a([B)V

    iget-object p3, p4, Lcom/igexin/push/e/c/g;->n:[B

    invoke-static {v6, v3, v4}, Lcom/igexin/push/util/EncryptUtils;->getSocketSignature(Lcom/igexin/push/e/c/b;II)[B

    move-result-object p4

    invoke-static {p3, p4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p3

    if-nez p3, :cond_f9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/igexin/push/e/a/b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "|decode signature error!!!!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_da
    return-object v2

    :cond_db
    iget-byte p1, p4, Lcom/igexin/push/e/c/g;->h:B

    return-object v2

    :cond_de
    iget p3, v6, Lcom/igexin/push/e/c/b;->a:I

    if-gez p3, :cond_f9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/igexin/push/e/a/b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "|data len < 0, error"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-object v2

    :cond_f9
    iget-object p3, p0, Lcom/igexin/push/e/a/b;->d:Lcom/igexin/b/a/b/b;

    if-eqz p3, :cond_10a

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p3

    iget-object p4, p0, Lcom/igexin/push/e/a/b;->d:Lcom/igexin/b/a/b/b;

    invoke-virtual {p4, p1, p2, v6}, Lcom/igexin/b/a/b/b;->c(Lcom/igexin/b/a/b/e;Lcom/igexin/b/a/b/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/igexin/b/a/b/c;->a(Ljava/lang/Object;)Z

    :cond_10a
    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/b/a/b/c;->c()V

    return-object v2

    :cond_112
    const/4 p1, -0x1

    sput p1, Lcom/igexin/push/e/a/b;->b:I

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "server packetId can\'t be less than previous"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static a(Lcom/igexin/push/e/c/b;)Lcom/igexin/push/e/c/g;
    .registers 6

    new-instance v0, Lcom/igexin/push/e/c/g;

    invoke-direct {v0}, Lcom/igexin/push/e/c/g;-><init>()V

    const v1, 0x73ea68fb

    iput v1, v0, Lcom/igexin/push/e/c/g;->a:I

    iget-byte v1, p0, Lcom/igexin/push/e/c/b;->c:B

    invoke-virtual {v0, v1}, Lcom/igexin/push/e/c/g;->a(B)V

    iget-byte v1, p0, Lcom/igexin/push/e/c/b;->b:B

    const/4 v2, 0x0

    if-lez v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    iput v1, v0, Lcom/igexin/push/e/c/g;->e:I

    const/4 v1, 0x7

    iput v1, v0, Lcom/igexin/push/e/c/g;->c:I

    const/16 v1, 0xb

    iput v1, v0, Lcom/igexin/push/e/c/g;->b:I

    iget-byte v1, p0, Lcom/igexin/push/e/c/b;->d:B

    iput v1, v0, Lcom/igexin/push/e/c/g;->f:I

    iget v1, v0, Lcom/igexin/push/e/c/g;->b:I

    invoke-static {}, Lcom/igexin/push/util/EncryptUtils;->getRSAKeyId()[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v1, v3

    iput v1, v0, Lcom/igexin/push/e/c/g;->b:I

    iget v1, p0, Lcom/igexin/push/e/c/b;->a:I

    if-lez v1, :cond_59

    invoke-static {}, Lcom/igexin/push/util/EncryptUtils;->getPacketId()I

    move-result v1

    iput v1, v0, Lcom/igexin/push/e/c/g;->p:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v2, v1

    iput v2, v0, Lcom/igexin/push/e/c/g;->q:I

    iget v1, v0, Lcom/igexin/push/e/c/g;->p:I

    iget v2, v0, Lcom/igexin/push/e/c/g;->q:I

    invoke-static {p0, v1, v2}, Lcom/igexin/push/util/EncryptUtils;->getSocketSignature(Lcom/igexin/push/e/c/b;II)[B

    move-result-object p0

    iput-object p0, v0, Lcom/igexin/push/e/c/g;->n:[B

    iget-object p0, v0, Lcom/igexin/push/e/c/g;->n:[B

    array-length p0, p0

    iput p0, v0, Lcom/igexin/push/e/c/g;->o:I

    :goto_51
    iget p0, v0, Lcom/igexin/push/e/c/g;->b:I

    iget v1, v0, Lcom/igexin/push/e/c/g;->o:I

    add-int/2addr p0, v1

    iput p0, v0, Lcom/igexin/push/e/c/g;->b:I

    goto :goto_60

    :cond_59
    iget-byte p0, v0, Lcom/igexin/push/e/c/g;->h:B

    if-nez p0, :cond_60

    iput v2, v0, Lcom/igexin/push/e/c/g;->o:I

    goto :goto_51

    :cond_60
    :goto_60
    invoke-static {}, Lcom/igexin/b/a/b/c;->d()V

    return-object v0
.end method

.method private a(Lcom/igexin/b/a/b/a/a/o;I)[B
    .registers 3

    new-array p2, p2, [B

    invoke-virtual {p1, p2}, Lcom/igexin/b/a/b/a/a/o;->a([B)I

    return-object p2
.end method

.method private b(Lcom/igexin/b/a/b/a/a/o;I)I
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/igexin/push/e/a/b;->a(Lcom/igexin/b/a/b/a/a/o;I)[B

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_d

    invoke-static {p1, v0}, Lcom/igexin/b/a/b/f;->a([BI)I

    move-result p1

    return p1

    :cond_d
    const/4 v1, 0x2

    if-ne p2, v1, :cond_15

    invoke-static {p1, v0}, Lcom/igexin/b/a/b/f;->b([BI)S

    move-result p1

    return p1

    :cond_15
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1d

    invoke-static {p1, v0}, Lcom/igexin/b/a/b/f;->d([BI)I

    move-result p1

    return p1

    :cond_1d
    return v0
.end method

.method private b(Lcom/igexin/b/a/b/e;Lcom/igexin/b/a/b/d;Lcom/igexin/b/a/b/a/a/o;Lcom/igexin/push/e/c/g;)Lcom/igexin/b/a/d/a/e;
    .registers 11

    iget-byte v0, p4, Lcom/igexin/push/e/c/g;->h:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_12

    invoke-direct {p0, p3}, Lcom/igexin/push/e/a/b;->a(Lcom/igexin/b/a/b/a/a/o;)B

    move-result v0

    if-lez v0, :cond_12

    invoke-direct {p0, p3, v0}, Lcom/igexin/push/e/a/b;->a(Lcom/igexin/b/a/b/a/a/o;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/e/a/b;->g:[B

    :cond_12
    iget v0, p4, Lcom/igexin/push/e/c/g;->e:I

    const/4 v2, 0x0

    if-nez v0, :cond_2b

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    new-instance p2, Lcom/igexin/push/e/c/h;

    invoke-direct {p2}, Lcom/igexin/push/e/c/h;-><init>()V

    invoke-virtual {p1, p2}, Lcom/igexin/b/a/b/c;->a(Ljava/lang/Object;)Z

    :cond_23
    :goto_23
    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/b/a/b/c;->c()V

    return-object v2

    :cond_2b
    const/4 v0, 0x3

    invoke-direct {p0, p3, v0}, Lcom/igexin/push/e/a/b;->a(Lcom/igexin/b/a/b/a/a/o;I)[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/igexin/b/a/b/f;->b([BI)S

    move-result v3

    const/4 v4, 0x2

    invoke-static {v0, v4}, Lcom/igexin/b/a/b/f;->a([BI)I

    move-result v0

    new-instance v4, Lcom/igexin/push/e/c/b;

    invoke-direct {v4}, Lcom/igexin/push/e/c/b;-><init>()V

    iput v3, v4, Lcom/igexin/push/e/c/b;->a:I

    int-to-byte v5, v0

    iput-byte v5, v4, Lcom/igexin/push/e/c/b;->b:B

    iget v5, p4, Lcom/igexin/push/e/c/g;->c:I

    iput v5, v4, Lcom/igexin/push/e/c/b;->f:I

    const/16 v5, 0x1a

    if-eq v0, v5, :cond_4d

    return-object v2

    :cond_4d
    iget v0, v4, Lcom/igexin/push/e/c/b;->a:I

    if-lez v0, :cond_85

    invoke-direct {p0, p3, v3}, Lcom/igexin/push/e/a/b;->a(Lcom/igexin/b/a/b/a/a/o;I)[B

    move-result-object p3

    iget-byte v0, p4, Lcom/igexin/push/e/c/g;->h:B

    if-ne v0, v1, :cond_6f

    iget-object v0, p0, Lcom/igexin/push/e/a/b;->g:[B

    if-nez v0, :cond_66

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/b/a/b/c;->a()[B

    move-result-object v0

    goto :goto_6a

    :cond_66
    invoke-static {v0}, Lcom/igexin/b/b/a;->a([B)[B

    move-result-object v0

    :goto_6a
    invoke-static {p3, v0}, Lcom/igexin/b/a/a/a;->a([B[B)[B

    move-result-object p3

    goto :goto_71

    :cond_6f
    iget-byte v0, p4, Lcom/igexin/push/e/c/g;->h:B

    :goto_71
    iget-byte v0, p4, Lcom/igexin/push/e/c/g;->g:B

    const/16 v1, -0x80

    if-ne v0, v1, :cond_7c

    invoke-static {p3}, Lcom/igexin/b/a/b/f;->d([B)[B

    move-result-object p3

    goto :goto_80

    :cond_7c
    iget-byte p4, p4, Lcom/igexin/push/e/c/g;->g:B

    if-nez p4, :cond_84

    :goto_80
    invoke-virtual {v4, p3}, Lcom/igexin/push/e/c/b;->a([B)V

    goto :goto_85

    :cond_84
    return-object v2

    :cond_85
    :goto_85
    iget-object p3, p0, Lcom/igexin/push/e/a/b;->d:Lcom/igexin/b/a/b/b;

    if-eqz p3, :cond_23

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p3

    iget-object p4, p0, Lcom/igexin/push/e/a/b;->d:Lcom/igexin/b/a/b/b;

    invoke-virtual {p4, p1, p2, v4}, Lcom/igexin/b/a/b/b;->c(Lcom/igexin/b/a/b/e;Lcom/igexin/b/a/b/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/igexin/b/a/b/c;->a(Ljava/lang/Object;)Z

    goto :goto_23
.end method


# virtual methods
.method public a(Lcom/igexin/b/a/b/e;Lcom/igexin/b/a/b/d;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    instance-of p1, p3, Lcom/igexin/push/e/c/b;

    const/4 p2, 0x0

    if-eqz p1, :cond_138

    check-cast p3, Lcom/igexin/push/e/c/b;

    invoke-static {p3}, Lcom/igexin/push/e/a/b;->a(Lcom/igexin/push/e/c/b;)Lcom/igexin/push/e/c/g;

    move-result-object p1

    iget-byte v0, p3, Lcom/igexin/push/e/c/b;->b:B

    if-lez v0, :cond_a6

    iget v0, p3, Lcom/igexin/push/e/c/b;->a:I

    if-lez v0, :cond_a6

    iget-byte v0, p1, Lcom/igexin/push/e/c/g;->g:B

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_24

    iget-object v0, p3, Lcom/igexin/push/e/c/b;->e:[B

    invoke-static {v0}, Lcom/igexin/b/a/b/f;->c([B)[B

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/igexin/push/e/c/b;->a([B)V

    :cond_24
    iget-byte v0, p1, Lcom/igexin/push/e/c/g;->h:B

    const/16 v1, 0x30

    and-int/2addr v0, v1

    const/16 v2, 0x10

    if-ne v0, v2, :cond_47

    iget p2, p1, Lcom/igexin/push/e/c/g;->q:I

    invoke-static {p2}, Lcom/igexin/b/a/b/f;->b(I)[B

    move-result-object p2

    invoke-static {p2}, Lcom/igexin/push/util/EncryptUtils;->getIV([B)[B

    move-result-object p2

    iget v0, p1, Lcom/igexin/push/e/c/g;->f:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3d

    goto :goto_a6

    :cond_3d
    iget-object v0, p3, Lcom/igexin/push/e/c/b;->e:[B

    invoke-static {v0, p2}, Lcom/igexin/push/util/EncryptUtils;->aesEncSocket([B[B)[B

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/igexin/push/e/c/b;->a([B)V

    goto :goto_a6

    :cond_47
    iget-byte v0, p1, Lcom/igexin/push/e/c/g;->h:B

    and-int/2addr v0, v1

    if-nez v0, :cond_4d

    goto :goto_a6

    :cond_4d
    iget-byte v0, p1, Lcom/igexin/push/e/c/g;->h:B

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_69

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/igexin/push/e/a/b;->a:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "|encry type = 0x30 not support"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_65
    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-object p2

    :cond_69
    iget-byte v0, p1, Lcom/igexin/push/e/c/g;->h:B

    and-int/2addr v0, v1

    const/16 v2, 0x20

    if-ne v0, v2, :cond_87

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/igexin/push/e/a/b;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|encry type = 0x20 reserved"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    goto :goto_a6

    :cond_87
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/igexin/push/e/a/b;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|encry type = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p1, Lcom/igexin/push/e/c/g;->h:B

    and-int/2addr p1, v1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not support"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_65

    :cond_a6
    :goto_a6
    iget p2, p1, Lcom/igexin/push/e/c/g;->b:I

    iget-byte v0, p3, Lcom/igexin/push/e/c/b;->b:B

    const/4 v1, 0x0

    if-lez v0, :cond_b2

    iget v0, p3, Lcom/igexin/push/e/c/b;->a:I

    add-int/lit8 v0, v0, 0xb

    goto :goto_b3

    :cond_b2
    const/4 v0, 0x0

    :goto_b3
    add-int/2addr p2, v0

    new-array p2, p2, [B

    const v0, 0x73ea68fb

    invoke-static {v0, p2, v1}, Lcom/igexin/b/a/b/f;->a(I[BI)I

    move-result v0

    iget v2, p1, Lcom/igexin/push/e/c/g;->b:I

    invoke-static {v2, p2, v0}, Lcom/igexin/b/a/b/f;->c(I[BI)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p1, Lcom/igexin/push/e/c/g;->c:I

    invoke-static {v2, p2, v0}, Lcom/igexin/b/a/b/f;->c(I[BI)I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1}, Lcom/igexin/push/e/c/g;->a()I

    move-result v2

    invoke-static {v2, p2, v0}, Lcom/igexin/b/a/b/f;->c(I[BI)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p1, Lcom/igexin/push/e/c/g;->e:I

    invoke-static {v2, p2, v0}, Lcom/igexin/b/a/b/f;->c(I[BI)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {}, Lcom/igexin/push/util/EncryptUtils;->getRSAKeyId()[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v3, p2, v0}, Lcom/igexin/b/a/b/f;->c(I[BI)I

    move-result v3

    add-int/2addr v0, v3

    array-length v3, v2

    invoke-static {v2, v1, p2, v0, v3}, Lcom/igexin/b/a/b/f;->a([BI[BII)I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1}, Lcom/igexin/push/e/c/g;->b()I

    move-result v2

    invoke-static {v2, p2, v0}, Lcom/igexin/b/a/b/f;->c(I[BI)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p3, Lcom/igexin/push/e/c/b;->a:I

    if-lez v2, :cond_108

    iget v2, p1, Lcom/igexin/push/e/c/g;->o:I

    invoke-static {v2, p2, v0}, Lcom/igexin/b/a/b/f;->c(I[BI)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/igexin/push/e/c/g;->n:[B

    iget v3, p1, Lcom/igexin/push/e/c/g;->o:I

    invoke-static {v2, v1, p2, v0, v3}, Lcom/igexin/b/a/b/f;->a([BI[BII)I

    move-result v2

    goto :goto_10c

    :cond_108
    invoke-static {v1, p2, v0}, Lcom/igexin/b/a/b/f;->c(I[BI)I

    move-result v2

    :goto_10c
    add-int/2addr v0, v2

    iget-byte v2, p3, Lcom/igexin/push/e/c/b;->b:B

    if-lez v2, :cond_138

    iget v2, p1, Lcom/igexin/push/e/c/g;->p:I

    invoke-static {v2, p2, v0}, Lcom/igexin/b/a/b/f;->a(I[BI)I

    move-result v2

    add-int/2addr v0, v2

    iget p1, p1, Lcom/igexin/push/e/c/g;->q:I

    invoke-static {p1, p2, v0}, Lcom/igexin/b/a/b/f;->a(I[BI)I

    move-result p1

    add-int/2addr v0, p1

    iget p1, p3, Lcom/igexin/push/e/c/b;->a:I

    invoke-static {p1, p2, v0}, Lcom/igexin/b/a/b/f;->b(I[BI)I

    move-result p1

    add-int/2addr v0, p1

    iget-byte p1, p3, Lcom/igexin/push/e/c/b;->b:B

    invoke-static {p1, p2, v0}, Lcom/igexin/b/a/b/f;->c(I[BI)I

    move-result p1

    add-int/2addr v0, p1

    iget p1, p3, Lcom/igexin/push/e/c/b;->a:I

    if-lez p1, :cond_138

    iget-object p1, p3, Lcom/igexin/push/e/c/b;->e:[B

    iget p3, p3, Lcom/igexin/push/e/c/b;->a:I

    invoke-static {p1, v1, p2, v0, p3}, Lcom/igexin/b/a/b/f;->a([BI[BII)I

    :cond_138
    return-object p2
.end method

.method public b(Lcom/igexin/b/a/b/e;Lcom/igexin/b/a/b/d;Ljava/lang/Object;)Lcom/igexin/b/a/d/a/e;
    .registers 8

    instance-of v0, p3, Lcom/igexin/b/a/b/a/a/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p3, Lcom/igexin/b/a/b/a/a/o;

    goto :goto_9

    :cond_8
    move-object p3, v1

    :goto_9
    if-nez p3, :cond_22

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/igexin/push/e/a/b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "|syncIns is null"

    :goto_17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-object v1

    :cond_22
    const/16 v0, 0x8

    invoke-direct {p0, p3, v0}, Lcom/igexin/push/e/a/b;->a(Lcom/igexin/b/a/b/a/a/o;I)[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/igexin/b/a/b/f;->d([BI)I

    move-result v2

    const v3, 0x73ea68fb

    if-eq v2, v3, :cond_33

    return-object v1

    :cond_33
    new-instance v2, Lcom/igexin/push/e/c/g;

    invoke-direct {v2}, Lcom/igexin/push/e/c/g;-><init>()V

    const/4 v3, 0x4

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Lcom/igexin/push/e/c/g;->b:I

    const/4 v3, 0x5

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Lcom/igexin/push/e/c/g;->c:I

    const/4 v3, 0x6

    aget-byte v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/igexin/push/e/c/g;->a(B)V

    const/4 v3, 0x7

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    iput v0, v2, Lcom/igexin/push/e/c/g;->e:I

    iget v0, v2, Lcom/igexin/push/e/c/g;->c:I

    if-ne v0, v3, :cond_5c

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/igexin/push/e/a/b;->a(Lcom/igexin/b/a/b/e;Lcom/igexin/b/a/b/d;Lcom/igexin/b/a/b/a/a/o;Lcom/igexin/push/e/c/g;)Lcom/igexin/b/a/d/a/e;

    move-result-object p1

    return-object p1

    :cond_5c
    iget v0, v2, Lcom/igexin/push/e/c/g;->c:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_66

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/igexin/push/e/a/b;->b(Lcom/igexin/b/a/b/e;Lcom/igexin/b/a/b/d;Lcom/igexin/b/a/b/a/a/o;Lcom/igexin/push/e/c/g;)Lcom/igexin/b/a/d/a/e;

    move-result-object p1

    return-object p1

    :cond_66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/igexin/push/e/a/b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "|server socket resp version = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v2, Lcom/igexin/push/e/c/g;->c:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", not support !!!"

    goto :goto_17
.end method

.method public synthetic c(Lcom/igexin/b/a/b/e;Lcom/igexin/b/a/b/d;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/igexin/push/e/a/b;->b(Lcom/igexin/b/a/b/e;Lcom/igexin/b/a/b/d;Ljava/lang/Object;)Lcom/igexin/b/a/d/a/e;

    move-result-object p1

    return-object p1
.end method
