###### Class com.igexin.push.e.a.a (com.igexin.push.e.a.a)
.class public Lcom/igexin/push/e/a/a;
.super Lcom/igexin/b/a/b/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/igexin/b/a/b/b;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/igexin/b/a/b/b;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, p2}, Lcom/igexin/push/e/a/a;->a(Lcom/igexin/b/a/b/b;)V

    return-void
.end method

.method private a(Lcom/igexin/push/e/c/b;Lcom/igexin/push/e/c/e;)Z
    .registers 6

    const-string v0, "action"

    iget-byte p1, p1, Lcom/igexin/push/e/c/b;->b:B

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_a

    return v1

    :cond_a
    check-cast p2, Lcom/igexin/push/e/c/o;

    invoke-virtual {p2}, Lcom/igexin/push/e/c/o;->a()Z

    move-result p1

    if-eqz p1, :cond_4e

    iget-object p1, p2, Lcom/igexin/push/e/c/o;->e:Ljava/lang/Object;

    if-eqz p1, :cond_4e

    :try_start_16
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p2, Lcom/igexin/push/e/c/o;->e:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4e

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4e

    const-string p2, "redirect_server"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_31} :catch_35

    if-eqz p1, :cond_4e

    const/4 p1, 0x1

    return p1

    :catch_35
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CommandFilter|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_4e
    return v1
.end method


# virtual methods
.method public a(Lcom/igexin/b/a/b/e;Lcom/igexin/b/a/b/d;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    instance-of p1, p3, Lcom/igexin/push/e/c/e;

    if-eqz p1, :cond_20

    check-cast p3, Lcom/igexin/push/e/c/e;

    new-instance p1, Lcom/igexin/push/e/c/b;

    invoke-direct {p1}, Lcom/igexin/push/e/c/b;-><init>()V

    iget p2, p3, Lcom/igexin/push/e/c/e;->i:I

    int-to-byte p2, p2

    iput-byte p2, p1, Lcom/igexin/push/e/c/b;->b:B

    invoke-virtual {p3}, Lcom/igexin/push/e/c/e;->d()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/igexin/push/e/c/b;->a([B)V

    iget-byte p2, p3, Lcom/igexin/push/e/c/e;->j:B

    iput-byte p2, p1, Lcom/igexin/push/e/c/b;->c:B

    iget-byte p2, p3, Lcom/igexin/push/e/c/e;->k:B

    iput-byte p2, p1, Lcom/igexin/push/e/c/b;->d:B

    return-object p1

    :cond_20
    instance-of p1, p3, [Lcom/igexin/push/e/c/e;

    if-eqz p1, :cond_4e

    check-cast p3, [Lcom/igexin/push/e/c/e;

    check-cast p3, [Lcom/igexin/push/e/c/e;

    array-length p1, p3

    new-array p1, p1, [Lcom/igexin/push/e/c/b;

    const/4 p2, 0x0

    :goto_2c
    array-length v0, p3

    if-ge p2, v0, :cond_4d

    new-instance v0, Lcom/igexin/push/e/c/b;

    invoke-direct {v0}, Lcom/igexin/push/e/c/b;-><init>()V

    aput-object v0, p1, p2

    aget-object v0, p1, p2

    aget-object v1, p3, p2

    iget v1, v1, Lcom/igexin/push/e/c/e;->i:I

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/igexin/push/e/c/b;->b:B

    aget-object v0, p1, p2

    aget-object v1, p3, p2

    invoke-virtual {v1}, Lcom/igexin/push/e/c/e;->d()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/e/c/b;->a([B)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2c

    :cond_4d
    return-object p1

    :cond_4e
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/igexin/b/a/b/e;Lcom/igexin/b/a/b/d;Ljava/lang/Object;)Lcom/igexin/b/a/d/a/e;
    .registers 7

    const/4 p1, 0x0

    if-nez p3, :cond_4

    return-object p1

    :cond_4
    instance-of p2, p3, Lcom/igexin/push/e/c/h;

    if-eqz p2, :cond_b

    check-cast p3, Lcom/igexin/b/a/d/a/e;

    return-object p3

    :cond_b
    check-cast p3, Lcom/igexin/push/e/c/b;

    iget-byte p2, p3, Lcom/igexin/push/e/c/b;->b:B

    const/4 v0, 0x5

    if-eq p2, v0, :cond_46

    const/16 v0, 0x9

    if-eq p2, v0, :cond_40

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_3a

    const/16 v0, 0x1c

    if-eq p2, v0, :cond_34

    const/16 v0, 0x25

    if-eq p2, v0, :cond_2e

    const/16 v0, 0x61

    if-eq p2, v0, :cond_28

    move-object p2, p1

    goto :goto_4b

    :cond_28
    new-instance p2, Lcom/igexin/push/e/c/j;

    invoke-direct {p2}, Lcom/igexin/push/e/c/j;-><init>()V

    goto :goto_4b

    :cond_2e
    new-instance p2, Lcom/igexin/push/e/c/n;

    invoke-direct {p2}, Lcom/igexin/push/e/c/n;-><init>()V

    goto :goto_4b

    :cond_34
    new-instance p2, Lcom/igexin/push/e/c/a;

    invoke-direct {p2}, Lcom/igexin/push/e/c/a;-><init>()V

    goto :goto_4b

    :cond_3a
    new-instance p2, Lcom/igexin/push/e/c/o;

    invoke-direct {p2}, Lcom/igexin/push/e/c/o;-><init>()V

    goto :goto_4b

    :cond_40
    new-instance p2, Lcom/igexin/push/e/c/q;

    invoke-direct {p2}, Lcom/igexin/push/e/c/q;-><init>()V

    goto :goto_4b

    :cond_46
    new-instance p2, Lcom/igexin/push/e/c/m;

    invoke-direct {p2}, Lcom/igexin/push/e/c/m;-><init>()V

    :goto_4b
    iget v0, p3, Lcom/igexin/push/e/c/b;->f:I

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-eq v0, v1, :cond_55

    iget v0, p3, Lcom/igexin/push/e/c/b;->f:I

    if-ne v0, v2, :cond_57

    :cond_55
    if-nez p2, :cond_58

    :cond_57
    return-object p1

    :cond_58
    iget-object v0, p3, Lcom/igexin/push/e/c/b;->e:[B

    invoke-virtual {p2, v0}, Lcom/igexin/push/e/c/e;->a([B)V

    iget v0, p3, Lcom/igexin/push/e/c/b;->f:I

    if-ne v0, v2, :cond_6f

    iget-byte v0, p3, Lcom/igexin/push/e/c/b;->g:B

    const/16 v1, 0x20

    if-ne v0, v1, :cond_6e

    invoke-direct {p0, p3, p2}, Lcom/igexin/push/e/a/a;->a(Lcom/igexin/push/e/c/b;Lcom/igexin/push/e/c/e;)Z

    move-result p3

    if-nez p3, :cond_6e

    return-object p1

    :cond_6e
    return-object p2

    :cond_6f
    invoke-direct {p0, p3, p2}, Lcom/igexin/push/e/a/a;->a(Lcom/igexin/push/e/c/b;Lcom/igexin/push/e/c/e;)Z

    move-result p3

    if-eqz p3, :cond_76

    move-object p1, p2

    :cond_76
    return-object p1
.end method

.method public synthetic c(Lcom/igexin/b/a/b/e;Lcom/igexin/b/a/b/d;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/igexin/push/e/a/a;->b(Lcom/igexin/b/a/b/e;Lcom/igexin/b/a/b/d;Ljava/lang/Object;)Lcom/igexin/b/a/d/a/e;

    move-result-object p1

    return-object p1
.end method
