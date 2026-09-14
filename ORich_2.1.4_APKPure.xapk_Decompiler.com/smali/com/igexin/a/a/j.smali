###### Class com.igexin.a.a.j (com.igexin.a.a.j)
.class public Lcom/igexin/a/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/a/a/c;
.implements Ljava/io/Closeable;


# instance fields
.field private final a:I

.field private final b:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x464c457f

    iput v0, p0, Lcom/igexin/a/a/j;->a:I

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/igexin/a/a/j;->b:Ljava/nio/channels/FileChannel;

    return-void

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "File is null or does not exist"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/igexin/a/a/e;JJ)J
    .registers 15

    const-wide/16 v0, 0x0

    :goto_2
    cmp-long v2, v0, p2

    if-gez v2, :cond_2a

    invoke-virtual {p1, v0, v1}, Lcom/igexin/a/a/e;->a(J)Lcom/igexin/a/a/f;

    move-result-object v2

    iget-wide v3, v2, Lcom/igexin/a/a/f;->a:J

    const-wide/16 v5, 0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_28

    iget-wide v3, v2, Lcom/igexin/a/a/f;->c:J

    cmp-long v7, v3, p4

    if-gtz v7, :cond_28

    iget-wide v3, v2, Lcom/igexin/a/a/f;->c:J

    iget-wide v7, v2, Lcom/igexin/a/a/f;->d:J

    add-long/2addr v3, v7

    cmp-long v7, p4, v3

    if-gtz v7, :cond_28

    iget-wide p1, v2, Lcom/igexin/a/a/f;->c:J

    sub-long/2addr p4, p1

    iget-wide p1, v2, Lcom/igexin/a/a/f;->b:J

    add-long/2addr p4, p1

    return-wide p4

    :cond_28
    add-long/2addr v0, v5

    goto :goto_2

    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not map vma to file offset!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/igexin/a/a/e;
    .registers 7

    iget-object v0, p0, Lcom/igexin/a/a/j;->b:Ljava/nio/channels/FileChannel;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/a/a/j;->c(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    const-wide/32 v3, 0x464c457f

    cmp-long v5, v1, v3

    if-nez v5, :cond_48

    const-wide/16 v1, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/a/a/j;->e(Ljava/nio/ByteBuffer;J)S

    move-result v1

    const-wide/16 v2, 0x5

    invoke-virtual {p0, v0, v2, v3}, Lcom/igexin/a/a/j;->e(Ljava/nio/ByteBuffer;J)S

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    if-ne v1, v2, :cond_38

    new-instance v1, Lcom/igexin/a/a/h;

    invoke-direct {v1, v0, p0}, Lcom/igexin/a/a/h;-><init>(ZLcom/igexin/a/a/j;)V

    return-object v1

    :cond_38
    if-ne v1, v3, :cond_40

    new-instance v1, Lcom/igexin/a/a/i;

    invoke-direct {v1, v0, p0}, Lcom/igexin/a/a/i;-><init>(ZLcom/igexin/a/a/j;)V

    return-object v1

    :cond_40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid class type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ELF Magic!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Ljava/nio/ByteBuffer;J)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    const-wide/16 v1, 0x1

    add-long/2addr v1, p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/igexin/a/a/j;->e(Ljava/nio/ByteBuffer;J)S

    move-result p2

    if-eqz p2, :cond_14

    int-to-char p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-wide p2, v1

    goto :goto_5

    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/nio/ByteBuffer;JI)V
    .registers 11

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const-wide/16 v1, 0x0

    :goto_9
    int-to-long v3, p4

    cmp-long v5, v1, v3

    if-gez v5, :cond_22

    iget-object v3, p0, Lcom/igexin/a/a/j;->b:Ljava/nio/channels/FileChannel;

    add-long v4, p2, v1

    invoke-virtual {v3, p1, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1c

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_9

    :cond_1c
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_22
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method protected b(Ljava/nio/ByteBuffer;J)J
    .registers 5

    const/16 v0, 0x8

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/igexin/a/a/j;->a(Ljava/nio/ByteBuffer;JI)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    return-wide p1
.end method

.method public b()Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/igexin/a/a/j;->b:Ljava/nio/channels/FileChannel;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/igexin/a/a/j;->a()Lcom/igexin/a/a/e;

    move-result-object v3

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iget-boolean v0, v3, Lcom/igexin/a/a/e;->a:Z

    if-eqz v0, :cond_1f

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_21

    :cond_1f
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_21
    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget v0, v3, Lcom/igexin/a/a/e;->f:I

    int-to-long v4, v0

    const-wide/32 v9, 0xffff

    const/4 v0, 0x0

    cmp-long v11, v4, v9

    if-nez v11, :cond_35

    invoke-virtual {v3, v0}, Lcom/igexin/a/a/e;->a(I)Lcom/igexin/a/a/g;

    move-result-object v4

    iget-wide v4, v4, Lcom/igexin/a/a/g;->a:J

    :cond_35
    move-wide v9, v1

    :goto_36
    const-wide/16 v11, 0x1

    cmp-long v13, v9, v4

    if-gez v13, :cond_4d

    invoke-virtual {v3, v9, v10}, Lcom/igexin/a/a/e;->a(J)Lcom/igexin/a/a/f;

    move-result-object v13

    iget-wide v14, v13, Lcom/igexin/a/a/f;->a:J

    const-wide/16 v16, 0x2

    cmp-long v18, v14, v16

    if-nez v18, :cond_4b

    iget-wide v9, v13, Lcom/igexin/a/a/f;->b:J

    goto :goto_4e

    :cond_4b
    add-long/2addr v9, v11

    goto :goto_36

    :cond_4d
    move-wide v9, v1

    :goto_4e
    cmp-long v13, v9, v1

    if-nez v13, :cond_57

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_57
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-wide v14, v1

    :goto_5d
    invoke-virtual {v3, v9, v10, v0}, Lcom/igexin/a/a/e;->a(JI)Lcom/igexin/a/a/d;

    move-result-object v1

    move-wide/from16 v18, v9

    iget-wide v9, v1, Lcom/igexin/a/a/d;->a:J

    cmp-long v2, v9, v11

    if-nez v2, :cond_73

    iget-wide v9, v1, Lcom/igexin/a/a/d;->b:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    :cond_73
    iget-wide v9, v1, Lcom/igexin/a/a/d;->a:J

    const-wide/16 v20, 0x5

    cmp-long v2, v9, v20

    if-nez v2, :cond_7e

    iget-wide v9, v1, Lcom/igexin/a/a/d;->b:J

    move-wide v14, v9

    :cond_7e
    :goto_7e
    add-int/lit8 v0, v0, 0x1

    iget-wide v1, v1, Lcom/igexin/a/a/d;->a:J

    const-wide/16 v9, 0x0

    cmp-long v16, v1, v9

    if-nez v16, :cond_bb

    cmp-long v0, v14, v9

    if-eqz v0, :cond_b3

    move-object/from16 v0, p0

    move-object v1, v3

    move-wide v2, v4

    move-wide v4, v14

    invoke-direct/range {v0 .. v5}, Lcom/igexin/a/a/j;->a(Lcom/igexin/a/a/e;JJ)J

    move-result-wide v0

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_99
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-virtual {v6, v8, v3, v4}, Lcom/igexin/a/a/j;->a(Ljava/nio/ByteBuffer;J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_99

    :cond_b2
    return-object v7

    :cond_b3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "String table offset not found!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bb
    move-wide/from16 v9, v18

    goto :goto_5d
.end method

.method protected c(Ljava/nio/ByteBuffer;J)J
    .registers 6

    const/4 v0, 0x4

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/igexin/a/a/j;->a(Ljava/nio/ByteBuffer;JI)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    int-to-long p1, p1

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    return-wide p1
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/igexin/a/a/j;->b:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    return-void
.end method

.method protected d(Ljava/nio/ByteBuffer;J)I
    .registers 5

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/igexin/a/a/j;->a(Ljava/nio/ByteBuffer;JI)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    const p2, 0xffff

    and-int/2addr p1, p2

    return p1
.end method

.method protected e(Ljava/nio/ByteBuffer;J)S
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/igexin/a/a/j;->a(Ljava/nio/ByteBuffer;JI)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    return p1
.end method
