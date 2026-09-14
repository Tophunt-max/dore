###### Class com.igexin.push.extension.distribution.gbd.h.a.b (com.igexin.push.extension.distribution.gbd.h.a.b)
.class public Lcom/igexin/push/extension/distribution/gbd/h/a/b;
.super Lcom/igexin/push/extension/distribution/gbd/h/b;


# static fields
.field private static c:Lcom/igexin/push/extension/distribution/gbd/h/a/b;


# direct methods
.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/h/b;-><init>()V

    sget-wide v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->aK:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/b;->b:J

    sget-wide v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->L:J

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/b;->a:J

    return-void
.end method

.method public static declared-synchronized e()Lcom/igexin/push/extension/distribution/gbd/h/a/b;
    .registers 2

    const-class v0, Lcom/igexin/push/extension/distribution/gbd/h/a/b;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/h/a/b;->c:Lcom/igexin/push/extension/distribution/gbd/h/a/b;

    if-nez v1, :cond_e

    new-instance v1, Lcom/igexin/push/extension/distribution/gbd/h/a/b;

    invoke-direct {v1}, Lcom/igexin/push/extension/distribution/gbd/h/a/b;-><init>()V

    sput-object v1, Lcom/igexin/push/extension/distribution/gbd/h/a/b;->c:Lcom/igexin/push/extension/distribution/gbd/h/a/b;

    :cond_e
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/h/a/b;->c:Lcom/igexin/push/extension/distribution/gbd/h/a/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a()V
    .registers 3

    :try_start_0
    const-string v0, "GBD_CAReportTask"

    const-string v1, "dotask ..."

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->c:Lcom/igexin/push/extension/distribution/gbd/d/a;

    if-eqz v0, :cond_1d

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->c:Lcom/igexin/push/extension/distribution/gbd/d/a;

    invoke-virtual {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/d/a;->sendMessage(Landroid/os/Message;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/b;->a:J

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->n(J)V

    return-void
.end method

.method public c()Z
    .registers 2

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->w()Z

    move-result v0

    return v0
.end method

.method public d()I
    .registers 2

    const/16 v0, 0x2b

    return v0
.end method
