###### Class com.igexin.a.a.n (com.igexin.a.a.n)
.class public Lcom/igexin/a/a/n;
.super Lcom/igexin/a/a/g;


# direct methods
.method public constructor <init>(Lcom/igexin/a/a/j;Lcom/igexin/a/a/e;I)V
    .registers 7

    invoke-direct {p0}, Lcom/igexin/a/a/g;-><init>()V

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-boolean v1, p2, Lcom/igexin/a/a/e;->a:Z

    if-eqz v1, :cond_10

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_12

    :cond_10
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_12
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-wide v1, p2, Lcom/igexin/a/a/e;->d:J

    iget p2, p2, Lcom/igexin/a/a/e;->g:I

    mul-int p3, p3, p2

    int-to-long p2, p3

    add-long/2addr v1, p2

    const-wide/16 p2, 0x2c

    add-long/2addr v1, p2

    invoke-virtual {p1, v0, v1, v2}, Lcom/igexin/a/a/j;->c(Ljava/nio/ByteBuffer;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/igexin/a/a/n;->a:J

    return-void
.end method
