###### Class com.igexin.push.extension.distribution.gbd.h.a.f (com.igexin.push.extension.distribution.gbd.h.a.f)
.class public Lcom/igexin/push/extension/distribution/gbd/h/a/f;
.super Lcom/igexin/push/extension/distribution/gbd/h/b;


# static fields
.field private static c:Lcom/igexin/push/extension/distribution/gbd/h/a/f;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/h/b;-><init>()V

    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/f;->b:J

    sget-wide v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->n:J

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/f;->a:J

    return-void
.end method

.method public static e()Lcom/igexin/push/extension/distribution/gbd/h/a/f;
    .registers 1

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/h/a/f;->c:Lcom/igexin/push/extension/distribution/gbd/h/a/f;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/h/a/f;

    invoke-direct {v0}, Lcom/igexin/push/extension/distribution/gbd/h/a/f;-><init>()V

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/h/a/f;->c:Lcom/igexin/push/extension/distribution/gbd/h/a/f;

    :cond_b
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/h/a/f;->c:Lcom/igexin/push/extension/distribution/gbd/h/a/f;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 5

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/k;->e(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "GBD_GCT"

    if-nez v0, :cond_10

    const-string v0, "GBD_CONFIG not network, return."

    invoke-static {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    const-string v0, "doTask GBD_CONFIG"

    invoke-static {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/extension/distribution/gbd/f/a;

    new-instance v2, Lcom/igexin/push/extension/distribution/gbd/f/a/d;

    invoke-direct {v2}, Lcom/igexin/push/extension/distribution/gbd/f/a/d;-><init>()V

    invoke-direct {v1, v2}, Lcom/igexin/push/extension/distribution/gbd/f/a;-><init>(Lcom/igexin/push/extension/distribution/gbd/f/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

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
