###### Class com.igexin.a.a.l (com.igexin.a.a.l)
.class public Lcom/igexin/a/a/l;
.super Lcom/igexin/a/a/f;


# direct methods
.method public constructor <init>(Lcom/igexin/a/a/j;Lcom/igexin/a/a/e;J)V
    .registers 10

    invoke-direct {p0}, Lcom/igexin/a/a/f;-><init>()V

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

    iget-wide v1, p2, Lcom/igexin/a/a/e;->c:J

    iget p2, p2, Lcom/igexin/a/a/e;->e:I

    int-to-long v3, p2

    mul-long p3, p3, v3

    add-long/2addr v1, p3

    invoke-virtual {p1, v0, v1, v2}, Lcom/igexin/a/a/j;->c(Ljava/nio/ByteBuffer;J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/igexin/a/a/l;->a:J

    const-wide/16 p2, 0x8

    add-long/2addr p2, v1

    invoke-virtual {p1, v0, p2, p3}, Lcom/igexin/a/a/j;->b(Ljava/nio/ByteBuffer;J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/igexin/a/a/l;->b:J

    const-wide/16 p2, 0x10

    add-long/2addr p2, v1

    invoke-virtual {p1, v0, p2, p3}, Lcom/igexin/a/a/j;->b(Ljava/nio/ByteBuffer;J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/igexin/a/a/l;->c:J

    const-wide/16 p2, 0x28

    add-long/2addr v1, p2

    invoke-virtual {p1, v0, v1, v2}, Lcom/igexin/a/a/j;->b(Ljava/nio/ByteBuffer;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/igexin/a/a/l;->d:J

    return-void
.end method
