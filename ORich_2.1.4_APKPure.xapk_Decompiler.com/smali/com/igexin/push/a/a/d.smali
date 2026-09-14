###### Class com.igexin.push.a.a.d (com.igexin.push.a.a.d)
.class public Lcom/igexin/push/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/g/b/d;


# static fields
.field private static final a:Ljava/lang/String; = "com.igexin.push.a.a.d"


# instance fields
.field private b:J

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igexin/push/a/a/d;->b:J

    iput-wide v0, p0, Lcom/igexin/push/a/a/d;->c:J

    return-void
.end method

.method private c()V
    .registers 5

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/a/a/e;

    invoke-direct {v1, p0}, Lcom/igexin/push/a/a/e;-><init>(Lcom/igexin/push/a/a/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    sget-boolean v0, Lcom/igexin/push/config/k;->v:Z

    if-eqz v0, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/igexin/push/a/a/d;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1b

    invoke-direct {p0}, Lcom/igexin/push/a/a/d;->c()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/a/a/d;->c:J

    :cond_1b
    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/igexin/push/a/a/d;->b:J

    return-void
.end method

.method public b()Z
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/igexin/push/a/a/d;->b:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method
