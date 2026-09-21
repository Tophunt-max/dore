###### Class com.igexin.push.e.c.j (com.igexin.push.e.c.j)
.class public Lcom/igexin/push/e/c/j;
.super Lcom/igexin/push/e/c/e;


# instance fields
.field public a:B

.field public b:B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/push/e/c/e;-><init>()V

    const/16 v0, 0x61

    iput v0, p0, Lcom/igexin/push/e/c/j;->i:I

    return-void
.end method


# virtual methods
.method public a([B)V
    .registers 3

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/igexin/push/e/c/j;->a:B

    const/4 v0, 0x1

    aget-byte p1, p1, v0

    iput-byte p1, p0, Lcom/igexin/push/e/c/j;->b:B

    return-void
.end method

.method public d()[B
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [B

    iget-byte v1, p0, Lcom/igexin/push/e/c/j;->a:B

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget-byte v1, p0, Lcom/igexin/push/e/c/j;->b:B

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    return-object v0
.end method
