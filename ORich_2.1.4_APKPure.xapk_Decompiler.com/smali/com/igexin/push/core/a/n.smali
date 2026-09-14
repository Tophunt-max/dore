###### Class com.igexin.push.core.a.n (com.igexin.push.core.a.n)
.class Lcom/igexin/push/core/a/n;
.super Lcom/igexin/push/g/b;


# instance fields
.field final synthetic a:Lcom/igexin/push/core/a/l;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/a/l;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/a/n;->a:Lcom/igexin/push/core/a/l;

    invoke-direct {p0}, Lcom/igexin/push/g/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 7

    :try_start_0
    invoke-static {}, Lcom/igexin/push/core/b/a;->a()Lcom/igexin/push/core/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/b/a;->b()Ljava/lang/String;

    move-result-object v0

    sget-wide v1, Lcom/igexin/push/core/f;->G:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_22

    invoke-static {}, Lcom/igexin/push/core/b/a;->a()Lcom/igexin/push/core/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/b/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    :cond_22
    const-string v0, "LoginResultAction|upload app list"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/igexin/push/core/c/h;->a(J)Z

    invoke-static {}, Lcom/igexin/push/core/b/a;->a()Lcom/igexin/push/core/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/b/a;->c()V
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_39

    :catchall_39
    :cond_39
    return-void
.end method
