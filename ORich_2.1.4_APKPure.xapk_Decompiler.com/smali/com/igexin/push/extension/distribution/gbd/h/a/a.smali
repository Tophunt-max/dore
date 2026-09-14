###### Class com.igexin.push.extension.distribution.gbd.h.a.a (com.igexin.push.extension.distribution.gbd.h.a.a)
.class public Lcom/igexin/push/extension/distribution/gbd/h/a/a;
.super Lcom/igexin/push/extension/distribution/gbd/h/b;


# static fields
.field private static c:Lcom/igexin/push/extension/distribution/gbd/h/a/a;


# direct methods
.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/h/b;-><init>()V

    sget-wide v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->aF:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/a;->b:J

    sget-wide v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->B:J

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/a;->a:J

    return-void
.end method

.method public static e()Lcom/igexin/push/extension/distribution/gbd/h/a/a;
    .registers 1

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/h/a/a;->c:Lcom/igexin/push/extension/distribution/gbd/h/a/a;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/h/a/a;

    invoke-direct {v0}, Lcom/igexin/push/extension/distribution/gbd/h/a/a;-><init>()V

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/h/a/a;->c:Lcom/igexin/push/extension/distribution/gbd/h/a/a;

    :cond_b
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/h/a/a;->c:Lcom/igexin/push/extension/distribution/gbd/h/a/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    :try_start_0
    const-string v0, "GBD_ALT"

    const-string v1, "dotask ..."

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->c:Lcom/igexin/push/extension/distribution/gbd/d/a;

    if-eqz v0, :cond_1e

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->c:Lcom/igexin/push/extension/distribution/gbd/d/a;

    invoke-virtual {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/d/a;->sendMessage(Landroid/os/Message;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/a;->a:J

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->i(J)V

    return-void
.end method

.method public b()Z
    .registers 2

    invoke-super {p0}, Lcom/igexin/push/extension/distribution/gbd/h/b;->b()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public d()I
    .registers 2

    const/16 v0, 0x1c

    return v0
.end method
