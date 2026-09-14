###### Class com.igexin.b.a.b.a (com.igexin.b.a.b.a)
.class public Lcom/igexin/b/a/b/a;
.super Ljava/io/OutputStream;


# instance fields
.field private a:Ljava/io/OutputStream;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 4

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igexin/b/a/b/a;->a:Ljava/io/OutputStream;

    const/4 v0, 0x0

    iput v0, p0, Lcom/igexin/b/a/b/a;->b:I

    iput v0, p0, Lcom/igexin/b/a/b/a;->c:I

    iput v0, p0, Lcom/igexin/b/a/b/a;->d:I

    iput v0, p0, Lcom/igexin/b/a/b/a;->e:I

    iput-object p1, p0, Lcom/igexin/b/a/b/a;->a:Ljava/io/OutputStream;

    iput p2, p0, Lcom/igexin/b/a/b/a;->e:I

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 9

    iget v0, p0, Lcom/igexin/b/a/b/a;->c:I

    if-lez v0, :cond_72

    iget v0, p0, Lcom/igexin/b/a/b/a;->e:I

    const/4 v1, 0x0

    if-lez v0, :cond_1a

    iget v2, p0, Lcom/igexin/b/a/b/a;->d:I

    if-ne v2, v0, :cond_1a

    iget-object v0, p0, Lcom/igexin/b/a/b/a;->a:Ljava/io/OutputStream;

    const-string v2, "\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    iput v1, p0, Lcom/igexin/b/a/b/a;->d:I

    :cond_1a
    iget v0, p0, Lcom/igexin/b/a/b/a;->b:I

    shl-int/lit8 v0, v0, 0x8

    ushr-int/lit8 v0, v0, 0x1a

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget v3, p0, Lcom/igexin/b/a/b/a;->b:I

    shl-int/lit8 v3, v3, 0xe

    ushr-int/lit8 v3, v3, 0x1a

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget v4, p0, Lcom/igexin/b/a/b/a;->c:I

    const/4 v5, 0x2

    const/16 v6, 0x3d

    if-ge v4, v5, :cond_3a

    const/16 v4, 0x3d

    goto :goto_44

    :cond_3a
    iget v4, p0, Lcom/igexin/b/a/b/a;->b:I

    shl-int/lit8 v4, v4, 0x14

    ushr-int/lit8 v4, v4, 0x1a

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_44
    iget v5, p0, Lcom/igexin/b/a/b/a;->c:I

    const/4 v7, 0x3

    if-ge v5, v7, :cond_4a

    goto :goto_54

    :cond_4a
    iget v5, p0, Lcom/igexin/b/a/b/a;->b:I

    shl-int/lit8 v5, v5, 0x1a

    ushr-int/lit8 v5, v5, 0x1a

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_54
    iget-object v2, p0, Lcom/igexin/b/a/b/a;->a:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/igexin/b/a/b/a;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/igexin/b/a/b/a;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/igexin/b/a/b/a;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, v6}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lcom/igexin/b/a/b/a;->d:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/igexin/b/a/b/a;->d:I

    iput v1, p0, Lcom/igexin/b/a/b/a;->c:I

    iput v1, p0, Lcom/igexin/b/a/b/a;->b:I

    :cond_72
    return-void
.end method

.method public close()V
    .registers 2

    invoke-virtual {p0}, Lcom/igexin/b/a/b/a;->a()V

    iget-object v0, p0, Lcom/igexin/b/a/b/a;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public write(I)V
    .registers 4

    and-int/lit16 p1, p1, 0xff

    iget v0, p0, Lcom/igexin/b/a/b/a;->c:I

    mul-int/lit8 v1, v0, 0x8

    rsub-int/lit8 v1, v1, 0x10

    shl-int/2addr p1, v1

    iget v1, p0, Lcom/igexin/b/a/b/a;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/igexin/b/a/b/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/igexin/b/a/b/a;->c:I

    const/4 p1, 0x3

    if-ne v0, p1, :cond_18

    invoke-virtual {p0}, Lcom/igexin/b/a/b/a;->a()V

    :cond_18
    return-void
.end method
