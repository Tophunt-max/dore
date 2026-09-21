###### Class com.igexin.push.core.j (com.igexin.push.core.j)
.class public Lcom/igexin/push/core/j;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/igexin/push/core/j;


# instance fields
.field public a:J

.field private b:Lcom/igexin/push/core/m;

.field private c:J


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x3a980

    iput-wide v0, p0, Lcom/igexin/push/core/j;->a:J

    sget-object v0, Lcom/igexin/push/core/m;->a:Lcom/igexin/push/core/m;

    iput-object v0, p0, Lcom/igexin/push/core/j;->b:Lcom/igexin/push/core/m;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igexin/push/core/j;->c:J

    return-void
.end method

.method public static a()Lcom/igexin/push/core/j;
    .registers 1

    sget-object v0, Lcom/igexin/push/core/j;->d:Lcom/igexin/push/core/j;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/core/j;

    invoke-direct {v0}, Lcom/igexin/push/core/j;-><init>()V

    sput-object v0, Lcom/igexin/push/core/j;->d:Lcom/igexin/push/core/j;

    :cond_b
    sget-object v0, Lcom/igexin/push/core/j;->d:Lcom/igexin/push/core/j;

    return-object v0
.end method

.method private b(Lcom/igexin/push/core/l;)V
    .registers 11

    sget-object v0, Lcom/igexin/push/core/k;->b:[I

    invoke-virtual {p1}, Lcom/igexin/push/core/l;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-wide/32 v1, 0xea60

    if-eq p1, v0, :cond_39

    const/4 v0, 0x2

    const-wide/32 v3, 0x3a980

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1b

    goto :goto_4b

    :cond_1b
    invoke-virtual {p0, v3, v4}, Lcom/igexin/push/core/j;->a(J)V

    goto :goto_46

    :cond_1f
    iget-wide v5, p0, Lcom/igexin/push/core/j;->c:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/igexin/push/core/j;->c:J

    const-wide/16 v7, 0x2

    cmp-long p1, v5, v7

    if-ltz p1, :cond_4b

    iget-wide v5, p0, Lcom/igexin/push/core/j;->a:J

    sub-long/2addr v5, v1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/igexin/push/core/j;->a(J)V

    sget-object p1, Lcom/igexin/push/core/m;->b:Lcom/igexin/push/core/m;

    goto :goto_48

    :cond_39
    iget-wide v3, p0, Lcom/igexin/push/core/j;->a:J

    add-long/2addr v3, v1

    const-wide/32 v0, 0x668a0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/igexin/push/core/j;->a(J)V

    :goto_46
    sget-object p1, Lcom/igexin/push/core/m;->a:Lcom/igexin/push/core/m;

    :goto_48
    invoke-virtual {p0, p1}, Lcom/igexin/push/core/j;->a(Lcom/igexin/push/core/m;)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method private c(Lcom/igexin/push/core/l;)V
    .registers 9

    sget-object v0, Lcom/igexin/push/core/k;->b:[I

    invoke-virtual {p1}, Lcom/igexin/push/core/l;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3e

    const/4 v0, 0x2

    const-wide/32 v1, 0x3a980

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_18

    goto :goto_43

    :cond_18
    invoke-virtual {p0, v1, v2}, Lcom/igexin/push/core/j;->a(J)V

    sget-object p1, Lcom/igexin/push/core/m;->a:Lcom/igexin/push/core/m;

    goto :goto_40

    :cond_1e
    iget-wide v3, p0, Lcom/igexin/push/core/j;->a:J

    const-wide/32 v5, 0xea60

    sub-long/2addr v3, v5

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/igexin/push/core/j;->a(J)V

    iget-wide v3, p0, Lcom/igexin/push/core/j;->c:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/igexin/push/core/j;->c:J

    const-wide/16 v5, 0x2

    cmp-long p1, v3, v5

    if-ltz p1, :cond_43

    invoke-virtual {p0, v1, v2}, Lcom/igexin/push/core/j;->a(J)V

    sget-object p1, Lcom/igexin/push/core/m;->c:Lcom/igexin/push/core/m;

    goto :goto_40

    :cond_3e
    sget-object p1, Lcom/igexin/push/core/m;->b:Lcom/igexin/push/core/m;

    :goto_40
    invoke-virtual {p0, p1}, Lcom/igexin/push/core/j;->a(Lcom/igexin/push/core/m;)V

    :cond_43
    :goto_43
    return-void
.end method

.method private d(Lcom/igexin/push/core/l;)V
    .registers 5

    sget-object v0, Lcom/igexin/push/core/k;->b:[I

    invoke-virtual {p1}, Lcom/igexin/push/core/l;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-wide/32 v1, 0x3a980

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_18

    const/4 v0, 0x3

    if-eq p1, v0, :cond_18

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1b

    goto :goto_23

    :cond_18
    sget-object p1, Lcom/igexin/push/core/m;->c:Lcom/igexin/push/core/m;

    goto :goto_20

    :cond_1b
    invoke-virtual {p0, v1, v2}, Lcom/igexin/push/core/j;->a(J)V

    sget-object p1, Lcom/igexin/push/core/m;->a:Lcom/igexin/push/core/m;

    :goto_20
    invoke-virtual {p0, p1}, Lcom/igexin/push/core/j;->a(Lcom/igexin/push/core/m;)V

    :goto_23
    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/igexin/push/core/j;->a:J

    return-void
.end method

.method public a(Lcom/igexin/push/core/l;)V
    .registers 4

    sget-object v0, Lcom/igexin/push/core/k;->a:[I

    iget-object v1, p0, Lcom/igexin/push/core/j;->b:Lcom/igexin/push/core/m;

    invoke-virtual {v1}, Lcom/igexin/push/core/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    goto :goto_1f

    :cond_14
    invoke-direct {p0, p1}, Lcom/igexin/push/core/j;->d(Lcom/igexin/push/core/l;)V

    goto :goto_1f

    :cond_18
    invoke-direct {p0, p1}, Lcom/igexin/push/core/j;->c(Lcom/igexin/push/core/l;)V

    goto :goto_1f

    :cond_1c
    invoke-direct {p0, p1}, Lcom/igexin/push/core/j;->b(Lcom/igexin/push/core/l;)V

    :goto_1f
    return-void
.end method

.method public a(Lcom/igexin/push/core/m;)V
    .registers 4

    iput-object p1, p0, Lcom/igexin/push/core/j;->b:Lcom/igexin/push/core/m;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igexin/push/core/j;->c:J

    return-void
.end method

.method public b()J
    .registers 6

    iget-wide v0, p0, Lcom/igexin/push/core/j;->a:J

    sget v2, Lcom/igexin/push/config/k;->d:I

    if-lez v2, :cond_b

    sget v0, Lcom/igexin/push/config/k;->d:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    :cond_b
    sget-boolean v2, Lcom/igexin/push/core/f;->h:Z

    const-wide/32 v3, 0x36ee80

    if-nez v2, :cond_14

    :goto_12
    move-wide v0, v3

    goto :goto_28

    :cond_14
    sget-boolean v2, Lcom/igexin/push/core/f;->l:Z

    if-nez v2, :cond_19

    goto :goto_12

    :cond_19
    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/push/core/e;->g()Lcom/igexin/push/f/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/push/f/a;->a()Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_12

    :cond_28
    :goto_28
    return-wide v0
.end method
