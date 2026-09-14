###### Class com.igexin.b.a.b.c (com.igexin.b.a.b.c)
.class public Lcom/igexin/b/a/b/c;
.super Lcom/igexin/b/a/d/f;


# static fields
.field static a:Lcom/igexin/b/a/b/c;


# instance fields
.field public volatile b:J

.field public volatile c:J

.field public volatile d:J

.field public volatile e:J

.field f:Lcom/igexin/b/a/d/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/igexin/b/a/d/a/a<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/igexin/b/a/b/b;",
            "Lcom/igexin/b/a/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private v:[B

.field private w:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/igexin/b/a/d/f;-><init>()V

    return-void
.end method

.method public static b()Lcom/igexin/b/a/b/c;
    .registers 1

    sget-object v0, Lcom/igexin/b/a/b/c;->a:Lcom/igexin/b/a/b/c;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/b/a/b/c;

    invoke-direct {v0}, Lcom/igexin/b/a/b/c;-><init>()V

    sput-object v0, Lcom/igexin/b/a/b/c;->a:Lcom/igexin/b/a/b/c;

    :cond_b
    sget-object v0, Lcom/igexin/b/a/b/c;->a:Lcom/igexin/b/a/b/c;

    return-object v0
.end method

.method public static d()V
    .registers 3

    sget-object v0, Lcom/igexin/b/a/b/c;->a:Lcom/igexin/b/a/b/c;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/igexin/b/a/b/c;->b:J

    sget-object v0, Lcom/igexin/b/a/b/c;->a:Lcom/igexin/b/a/b/c;

    iput-wide v1, v0, Lcom/igexin/b/a/b/c;->d:J

    sget-object v0, Lcom/igexin/b/a/b/c;->a:Lcom/igexin/b/a/b/c;

    iput-wide v1, v0, Lcom/igexin/b/a/b/c;->c:J

    sget-object v0, Lcom/igexin/b/a/b/c;->a:Lcom/igexin/b/a/b/c;

    iput-wide v1, v0, Lcom/igexin/b/a/b/c;->e:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILcom/igexin/b/a/b/b;Ljava/lang/Object;Z)Lcom/igexin/b/a/b/e;
    .registers 18

    const/4 v6, -0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v11}, Lcom/igexin/b/a/b/c;->a(Ljava/lang/String;ILcom/igexin/b/a/b/b;Ljava/lang/Object;ZIJBLjava/lang/Object;Lcom/igexin/b/a/d/a/c;)Lcom/igexin/b/a/b/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;ILcom/igexin/b/a/b/b;Ljava/lang/Object;ZIJBLjava/lang/Object;Lcom/igexin/b/a/d/a/c;)Lcom/igexin/b/a/b/e;
    .registers 26

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v13}, Lcom/igexin/b/a/b/c;->a(Ljava/lang/String;ILcom/igexin/b/a/b/b;Ljava/lang/Object;ZIJBLjava/lang/Object;Lcom/igexin/b/a/d/a/c;ILcom/igexin/b/a/d/a/f;)Lcom/igexin/b/a/b/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;ILcom/igexin/b/a/b/b;Ljava/lang/Object;ZIJBLjava/lang/Object;Lcom/igexin/b/a/d/a/c;ILcom/igexin/b/a/d/a/f;)Lcom/igexin/b/a/b/e;
    .registers 26

    move-object v10, p0

    move-object/from16 v0, p13

    iget-object v1, v10, Lcom/igexin/b/a/b/c;->f:Lcom/igexin/b/a/d/a/a;

    const/4 v2, 0x0

    if-nez v1, :cond_9

    return-object v2

    :cond_9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v4, p1

    move-object v5, p3

    invoke-interface {v1, p1, v3, p3}, Lcom/igexin/b/a/d/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/igexin/b/a/d/e;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/igexin/b/a/b/e;

    if-eqz v11, :cond_39

    invoke-virtual {v11}, Lcom/igexin/b/a/b/e;->r()Z

    move-result v1

    if-nez v1, :cond_39

    if-eqz v0, :cond_25

    move/from16 v1, p12

    invoke-virtual {v11, v1, v0}, Lcom/igexin/b/a/b/e;->a(ILcom/igexin/b/a/d/a/f;)V

    :cond_25
    move-object v0, p0

    move-object v1, v11

    move-object/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-wide/from16 v5, p7

    move/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    invoke-virtual/range {v0 .. v9}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/b/e;Ljava/lang/Object;ZIJBLjava/lang/Object;Lcom/igexin/b/a/d/a/c;)Z

    return-object v11

    :cond_39
    return-object v2
.end method

.method public a(Ljava/lang/String;ILcom/igexin/b/a/b/b;Ljava/lang/Object;ZILcom/igexin/b/a/d/a/f;)Lcom/igexin/b/a/b/e;
    .registers 22

    const/4 v6, -0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    invoke-virtual/range {v0 .. v13}, Lcom/igexin/b/a/b/c;->a(Ljava/lang/String;ILcom/igexin/b/a/b/b;Ljava/lang/Object;ZIJBLjava/lang/Object;Lcom/igexin/b/a/d/a/c;ILcom/igexin/b/a/d/a/f;)Lcom/igexin/b/a/b/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/igexin/b/a/d/a/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igexin/b/a/d/a/a<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/igexin/b/a/b/b;",
            "Lcom/igexin/b/a/b/e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/igexin/b/a/b/c;->f:Lcom/igexin/b/a/d/a/a;

    return-void
.end method

.method public a([B)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/b/a/b/c;->v:[B

    invoke-static {p1}, Lcom/igexin/b/b/a;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/igexin/b/a/b/c;->w:[B

    return-void
.end method

.method a(Lcom/igexin/b/a/b/e;Ljava/lang/Object;ZIJBLjava/lang/Object;Lcom/igexin/b/a/d/a/c;)Z
    .registers 10

    iput-object p2, p1, Lcom/igexin/b/a/b/e;->c:Ljava/lang/Object;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p5, p6, p2}, Lcom/igexin/b/a/b/e;->a(JLjava/util/concurrent/TimeUnit;)I

    iput p4, p1, Lcom/igexin/b/a/b/e;->x:I

    invoke-virtual {p1, p7}, Lcom/igexin/b/a/b/e;->a(I)V

    iput-object p8, p1, Lcom/igexin/b/a/b/e;->C:Ljava/lang/Object;

    invoke-virtual {p1, p9}, Lcom/igexin/b/a/b/e;->a(Lcom/igexin/b/a/d/a/c;)V

    invoke-virtual {p0, p1, p3}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;Z)Z

    move-result p1

    return p1
.end method

.method public a()[B
    .registers 2

    iget-object v0, p0, Lcom/igexin/b/a/b/c;->w:[B

    return-object v0
.end method

.method public final c()V
    .registers 1

    invoke-virtual {p0}, Lcom/igexin/b/a/b/c;->f()V

    return-void
.end method
