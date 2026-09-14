###### Class com.igexin.push.extension.distribution.gbd.h.a.e (com.igexin.push.extension.distribution.gbd.h.a.e)
.class public Lcom/igexin/push/extension/distribution/gbd/h/a/e;
.super Lcom/igexin/push/extension/distribution/gbd/h/b;


# static fields
.field private static c:Lcom/igexin/push/extension/distribution/gbd/h/a/e;


# direct methods
.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/h/b;-><init>()V

    sget-wide v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->N:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/e;->b:J

    sget-wide v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->t:J

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/e;->a:J

    return-void
.end method

.method public static e()Lcom/igexin/push/extension/distribution/gbd/h/a/e;
    .registers 1

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/h/a/e;->c:Lcom/igexin/push/extension/distribution/gbd/h/a/e;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/h/a/e;

    invoke-direct {v0}, Lcom/igexin/push/extension/distribution/gbd/h/a/e;-><init>()V

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/h/a/e;->c:Lcom/igexin/push/extension/distribution/gbd/h/a/e;

    :cond_b
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/h/a/e;->c:Lcom/igexin/push/extension/distribution/gbd/h/a/e;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    const-string v0, "GBD_DGLT"

    const-string v1, "do Task"

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->c:Lcom/igexin/push/extension/distribution/gbd/d/a;

    if-eqz v0, :cond_1c

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

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

    iput-wide p1, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/e;->a:J

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->s(J)V

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

.method public f()V
    .registers 5

    sget-wide v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->N:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/e;->b:J

    return-void
.end method
