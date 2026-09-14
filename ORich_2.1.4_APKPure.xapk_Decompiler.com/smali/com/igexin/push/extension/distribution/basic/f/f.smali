###### Class com.igexin.push.extension.distribution.basic.f.f (com.igexin.push.extension.distribution.basic.f.f)
.class public abstract Lcom/igexin/push/extension/distribution/basic/f/f;
.super Lcom/igexin/b/a/d/a;


# instance fields
.field a:Ljava/lang/String;

.field b:[B

.field protected c:Z

.field protected d:Z

.field protected e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/b/a/d/a;-><init>()V

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/f;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method

.method public a([B)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/basic/f/f;->f:Z

    if-nez p1, :cond_6

    return-void

    :cond_6
    array-length v0, p1

    const/4 v1, 0x7

    if-ge v0, v1, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x5

    aget-byte v0, p1, v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x6

    aget-byte p1, p1, v0

    const/16 v0, 0x6b

    if-ne p1, v0, :cond_1c

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/igexin/push/extension/distribution/basic/f/f;->f:Z

    :cond_1c
    return-void
.end method

.method public b([B)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/f/f;->b:[B

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/f/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()[B
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/f/f;->b:[B

    return-object v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/igexin/push/extension/distribution/basic/f/f;->c:Z

    return v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/igexin/push/extension/distribution/basic/f/f;->d:Z

    return v0
.end method
