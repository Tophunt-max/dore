###### Class com.igexin.push.extension.distribution.gbd.h.a.k (com.igexin.push.extension.distribution.gbd.h.a.k)
.class public Lcom/igexin/push/extension/distribution/gbd/h/a/k;
.super Lcom/igexin/push/extension/distribution/gbd/h/b;


# static fields
.field private static c:Lcom/igexin/push/extension/distribution/gbd/h/a/k;


# direct methods
.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/h/b;-><init>()V

    sget-wide v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->av:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/k;->b:J

    sget-wide v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->A:J

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/k;->a:J

    return-void
.end method

.method public static e()Lcom/igexin/push/extension/distribution/gbd/h/a/k;
    .registers 1

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/h/a/k;->c:Lcom/igexin/push/extension/distribution/gbd/h/a/k;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/h/a/k;

    invoke-direct {v0}, Lcom/igexin/push/extension/distribution/gbd/h/a/k;-><init>()V

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/h/a/k;->c:Lcom/igexin/push/extension/distribution/gbd/h/a/k;

    :cond_b
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/h/a/k;->c:Lcom/igexin/push/extension/distribution/gbd/h/a/k;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    const-string v0, "GBD_SLMT"

    const-string v1, "do Task"

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->c:Lcom/igexin/push/extension/distribution/gbd/d/a;

    if-eqz v0, :cond_1c

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->c:Lcom/igexin/push/extension/distribution/gbd/d/a;

    invoke-virtual {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/d/a;->sendMessage(Landroid/os/Message;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/k;->a:J

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->j(J)V

    return-void
.end method

.method public c()Z
    .registers 2

    sget-boolean v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->au:Z

    return v0
.end method

.method public d()I
    .registers 2

    const/16 v0, 0x1b

    return v0
.end method
