###### Class com.igexin.push.extension.distribution.gbd.h.a.l (com.igexin.push.extension.distribution.gbd.h.a.l)
.class public Lcom/igexin/push/extension/distribution/gbd/h/a/l;
.super Lcom/igexin/push/extension/distribution/gbd/h/b;


# static fields
.field private static c:Lcom/igexin/push/extension/distribution/gbd/h/a/l;


# direct methods
.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/h/b;-><init>()V

    sget-wide v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->aT:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/l;->b:J

    sget-wide v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->G:J

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/l;->a:J

    return-void
.end method

.method public static e()Lcom/igexin/push/extension/distribution/gbd/h/a/l;
    .registers 1

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/h/a/l;->c:Lcom/igexin/push/extension/distribution/gbd/h/a/l;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/h/a/l;

    invoke-direct {v0}, Lcom/igexin/push/extension/distribution/gbd/h/a/l;-><init>()V

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/h/a/l;->c:Lcom/igexin/push/extension/distribution/gbd/h/a/l;

    :cond_b
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/h/a/l;->c:Lcom/igexin/push/extension/distribution/gbd/h/a/l;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 5

    :try_start_0
    const-string v0, "GBD_UST"

    const-string v1, "dotask ..."

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/extension/distribution/gbd/f/a;

    new-instance v2, Lcom/igexin/push/extension/distribution/gbd/f/a/e;

    invoke-direct {v2}, Lcom/igexin/push/extension/distribution/gbd/f/a/e;-><init>()V

    invoke-direct {v1, v2}, Lcom/igexin/push/extension/distribution/gbd/f/a;-><init>(Lcom/igexin/push/extension/distribution/gbd/f/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_1f
    return-void
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/l;->a:J

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->m(J)V

    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public d()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
