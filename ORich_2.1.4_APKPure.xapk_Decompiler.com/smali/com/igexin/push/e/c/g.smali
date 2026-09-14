###### Class com.igexin.push.e.c.g (com.igexin.push.e.c.g)
.class public Lcom/igexin/push/e/c/g;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:B

.field public h:B

.field public i:B

.field public j:B

.field public k:B

.field public l:B

.field public m:B

.field public n:[B

.field public o:I

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    iget v0, p0, Lcom/igexin/push/e/c/g;->d:I

    iget-byte v1, p0, Lcom/igexin/push/e/c/g;->g:B

    or-int/2addr v0, v1

    iput v0, p0, Lcom/igexin/push/e/c/g;->d:I

    iget-byte v1, p0, Lcom/igexin/push/e/c/g;->h:B

    or-int/2addr v0, v1

    iput v0, p0, Lcom/igexin/push/e/c/g;->d:I

    iget-byte v1, p0, Lcom/igexin/push/e/c/g;->i:B

    or-int/2addr v0, v1

    iput v0, p0, Lcom/igexin/push/e/c/g;->d:I

    return v0
.end method

.method public a(B)V
    .registers 3

    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lcom/igexin/push/e/c/g;->d:I

    and-int/lit16 v0, p1, 0xc0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/igexin/push/e/c/g;->g:B

    and-int/lit8 v0, p1, 0x30

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/igexin/push/e/c/g;->h:B

    and-int/lit8 p1, p1, 0xf

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/igexin/push/e/c/g;->i:B

    return-void
.end method

.method public b()I
    .registers 3

    iget v0, p0, Lcom/igexin/push/e/c/g;->f:I

    iget-byte v1, p0, Lcom/igexin/push/e/c/g;->j:B

    or-int/2addr v0, v1

    iput v0, p0, Lcom/igexin/push/e/c/g;->f:I

    iget-byte v1, p0, Lcom/igexin/push/e/c/g;->k:B

    or-int/2addr v0, v1

    iput v0, p0, Lcom/igexin/push/e/c/g;->f:I

    iget-byte v1, p0, Lcom/igexin/push/e/c/g;->l:B

    or-int/2addr v0, v1

    iput v0, p0, Lcom/igexin/push/e/c/g;->f:I

    iget-byte v1, p0, Lcom/igexin/push/e/c/g;->m:B

    or-int/2addr v0, v1

    iput v0, p0, Lcom/igexin/push/e/c/g;->f:I

    return v0
.end method
