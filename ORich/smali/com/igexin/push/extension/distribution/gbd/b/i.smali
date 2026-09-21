###### Class com.igexin.push.extension.distribution.gbd.b.i (com.igexin.push.extension.distribution.gbd.b.i)
.class public Lcom/igexin/push/extension/distribution/gbd/b/i;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:J

.field private e:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/igexin/push/extension/distribution/gbd/b/i;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/igexin/push/extension/distribution/gbd/b/i;->a:I

    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/igexin/push/extension/distribution/gbd/b/i;->d:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/b/i;->c:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/igexin/push/extension/distribution/gbd/b/i;->b:I

    return v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/igexin/push/extension/distribution/gbd/b/i;->b:I

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/b/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcom/igexin/push/extension/distribution/gbd/b/i;->e:I

    return-void
.end method

.method public d()J
    .registers 3

    iget-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/b/i;->d:J

    return-wide v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/igexin/push/extension/distribution/gbd/b/i;->e:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    :try_start_0
    instance-of v0, p1, Lcom/igexin/push/extension/distribution/gbd/b/i;

    if-eqz v0, :cond_2e

    check-cast p1, Lcom/igexin/push/extension/distribution/gbd/b/i;

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/b/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Lcom/igexin/push/extension/distribution/gbd/b/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/b/i;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/igexin/push/extension/distribution/gbd/b/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_2a

    if-eqz p1, :cond_2e

    const/4 p1, 0x1

    return p1

    :catchall_2a
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_2e
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 6

    iget v0, p0, Lcom/igexin/push/extension/distribution/gbd/b/i;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/igexin/push/extension/distribution/gbd/b/i;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/b/i;->c:Ljava/lang/String;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/igexin/push/extension/distribution/gbd/b/i;->d:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method
