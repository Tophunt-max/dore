###### Class com.igexin.push.extension.distribution.gbd.h.a.m (com.igexin.push.extension.distribution.gbd.h.a.m)
.class public Lcom/igexin/push/extension/distribution/gbd/h/a/m;
.super Lcom/igexin/push/extension/distribution/gbd/h/b;


# static fields
.field private static c:Lcom/igexin/push/extension/distribution/gbd/h/a/m;


# direct methods
.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/h/b;-><init>()V

    sget-wide v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->p:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/m;->b:J

    sget-wide v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->F:J

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/m;->a:J

    return-void
.end method

.method public static e()Lcom/igexin/push/extension/distribution/gbd/h/a/m;
    .registers 1

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/h/a/m;->c:Lcom/igexin/push/extension/distribution/gbd/h/a/m;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/h/a/m;

    invoke-direct {v0}, Lcom/igexin/push/extension/distribution/gbd/h/a/m;-><init>()V

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/h/a/m;->c:Lcom/igexin/push/extension/distribution/gbd/h/a/m;

    :cond_b
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/h/a/m;->c:Lcom/igexin/push/extension/distribution/gbd/h/a/m;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 4

    const-string v0, "GBD_WST"

    const-string v1, "doTask"

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/i/k;->c(I)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v1, "type 11 in type black list, return."

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->c:Lcom/igexin/push/extension/distribution/gbd/d/a;

    if-eqz v0, :cond_27

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->c:Lcom/igexin/push/extension/distribution/gbd/d/a;

    invoke-virtual {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/d/a;->sendMessage(Landroid/os/Message;)Z

    :cond_27
    return-void
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/m;->a:J

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->l(J)V

    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public d()I
    .registers 2

    const/16 v0, 0xb

    return v0
.end method

.method public f()V
    .registers 5

    sget-wide v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->p:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/igexin/push/extension/distribution/gbd/h/a/m;->b:J

    return-void
.end method
