###### Class com.igexin.push.extension.distribution.gbd.h.a.h (com.igexin.push.extension.distribution.gbd.h.a.h)
.class public Lcom/igexin/push/extension/distribution/gbd/h/a/h;
.super Lcom/igexin/push/extension/distribution/gbd/h/b;


# static fields
.field private static c:Lcom/igexin/push/extension/distribution/gbd/h/a/h;


# direct methods
.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/h/b;-><init>()V

    sget-wide v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->L:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/h;->b:J

    sget-boolean v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->M:Z

    if-eqz v0, :cond_12

    sget-wide v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->C:J

    goto :goto_16

    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_16
    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/h;->a:J

    return-void
.end method

.method public static e()Lcom/igexin/push/extension/distribution/gbd/h/a/h;
    .registers 1

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/h/a/h;->c:Lcom/igexin/push/extension/distribution/gbd/h/a/h;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/h/a/h;

    invoke-direct {v0}, Lcom/igexin/push/extension/distribution/gbd/h/a/h;-><init>()V

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/h/a/h;->c:Lcom/igexin/push/extension/distribution/gbd/h/a/h;

    :cond_b
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/h/a/h;->c:Lcom/igexin/push/extension/distribution/gbd/h/a/h;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    :try_start_0
    const-string v0, "GBD_RNALT"

    const-string v1, "dotask ..."

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->c:Lcom/igexin/push/extension/distribution/gbd/d/a;

    if-eqz v0, :cond_20

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    const/16 v1, 0x29

    iput v1, v0, Landroid/os/Message;->arg1:I

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->c:Lcom/igexin/push/extension/distribution/gbd/d/a;

    invoke-virtual {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/d/a;->sendMessage(Landroid/os/Message;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public d()I
    .registers 2

    const/16 v0, 0x18

    return v0
.end method
