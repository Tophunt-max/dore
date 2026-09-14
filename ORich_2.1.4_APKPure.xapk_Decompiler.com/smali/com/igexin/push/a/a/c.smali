###### Class com.igexin.push.a.a.c (com.igexin.push.a.a.c)
.class public Lcom/igexin/push/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/g/b/d;


# static fields
.field private static c:Lcom/igexin/push/a/a/c;


# instance fields
.field private a:J

.field private b:J

.field private d:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igexin/push/a/a/c;->a:J

    iput-wide v0, p0, Lcom/igexin/push/a/a/c;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/push/a/a/c;->d:Z

    return-void
.end method

.method public static c()Lcom/igexin/push/a/a/c;
    .registers 1

    sget-object v0, Lcom/igexin/push/a/a/c;->c:Lcom/igexin/push/a/a/c;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/a/a/c;

    invoke-direct {v0}, Lcom/igexin/push/a/a/c;-><init>()V

    sput-object v0, Lcom/igexin/push/a/a/c;->c:Lcom/igexin/push/a/a/c;

    :cond_b
    sget-object v0, Lcom/igexin/push/a/a/c;->c:Lcom/igexin/push/a/a/c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-virtual {p0}, Lcom/igexin/push/a/a/c;->d()V

    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/igexin/push/a/a/c;->a:J

    return-void
.end method

.method public b()Z
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/igexin/push/a/a/c;->a:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/igexin/push/a/a/c;->b:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public d()V
    .registers 13

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/igexin/push/a/a/c;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Lcom/igexin/push/config/k;->b:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_87

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/igexin/push/util/a;->a(J)Z

    move-result v5

    const/4 v6, 0x5

    const/16 v7, 0xd

    const/16 v8, 0xc

    const/16 v9, 0xb

    if-eqz v5, :cond_58

    iget-boolean v5, p0, Lcom/igexin/push/a/a/c;->d:Z

    if-nez v5, :cond_31

    iput-boolean v3, p0, Lcom/igexin/push/a/a/c;->d:Z

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/igexin/push/core/e;->g()Lcom/igexin/push/f/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/igexin/push/f/a;->c()V

    :cond_31
    sget v5, Lcom/igexin/push/config/k;->a:I

    sget v10, Lcom/igexin/push/config/k;->b:I

    add-int/2addr v5, v10

    const/16 v10, 0x18

    if-le v5, v10, :cond_41

    sget v5, Lcom/igexin/push/config/k;->a:I

    sget v11, Lcom/igexin/push/config/k;->b:I

    add-int/2addr v5, v11

    sub-int/2addr v5, v10

    goto :goto_46

    :cond_41
    sget v5, Lcom/igexin/push/config/k;->a:I

    sget v10, Lcom/igexin/push/config/k;->b:I

    add-int/2addr v5, v10

    :goto_46
    invoke-virtual {v2, v9, v5}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2, v8, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2, v7, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v7, v4, v0

    if-gez v7, :cond_7f

    goto :goto_7c

    :cond_58
    iget-boolean v5, p0, Lcom/igexin/push/a/a/c;->d:Z

    if-eqz v5, :cond_69

    iput-boolean v4, p0, Lcom/igexin/push/a/a/c;->d:Z

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/igexin/push/core/e;->g()Lcom/igexin/push/f/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/igexin/push/f/a;->b()V

    :cond_69
    sget v5, Lcom/igexin/push/config/k;->a:I

    invoke-virtual {v2, v9, v5}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2, v8, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2, v7, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v7, v4, v0

    if-gez v7, :cond_7f

    :goto_7c
    invoke-virtual {v2, v6, v3}, Ljava/util/Calendar;->add(II)V

    :cond_7f
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/igexin/push/a/a/c;->b:J

    goto :goto_98

    :cond_87
    iget-boolean v2, p0, Lcom/igexin/push/a/a/c;->d:Z

    if-eqz v2, :cond_98

    iput-boolean v4, p0, Lcom/igexin/push/a/a/c;->d:Z

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/push/core/e;->g()Lcom/igexin/push/f/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/push/f/a;->b()V

    :cond_98
    :goto_98
    sget-wide v4, Lcom/igexin/push/config/k;->c:J

    iget-wide v6, p0, Lcom/igexin/push/a/a/c;->b:J

    add-long/2addr v6, v0

    cmp-long v2, v4, v6

    if-lez v2, :cond_b7

    sget-wide v4, Lcom/igexin/push/config/k;->c:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/igexin/push/a/a/c;->b:J

    iget-boolean v0, p0, Lcom/igexin/push/a/a/c;->d:Z

    if-nez v0, :cond_b7

    iput-boolean v3, p0, Lcom/igexin/push/a/a/c;->d:Z

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/e;->g()Lcom/igexin/push/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/f/a;->c()V

    :cond_b7
    return-void
.end method
