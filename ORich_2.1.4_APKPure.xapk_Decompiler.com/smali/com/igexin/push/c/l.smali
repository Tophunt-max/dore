###### Class com.igexin.push.c.l (com.igexin.push.c.l)
.class public Lcom/igexin/push/c/l;
.super Lcom/igexin/push/c/m;

# interfaces
.implements Lcom/igexin/push/c/p;


# static fields
.field private static e:Lcom/igexin/push/c/l;


# direct methods
.method private constructor <init>()V
    .registers 3

    sget-object v0, Lcom/igexin/push/core/f;->ar:Ljava/lang/String;

    sget-object v1, Lcom/igexin/push/core/f;->at:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/igexin/push/c/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/c/l;->d:Lcom/igexin/push/c/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igexin/push/c/a;->a(Z)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/igexin/push/c/l;
    .registers 2

    const-class v0, Lcom/igexin/push/c/l;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/igexin/push/c/l;->e:Lcom/igexin/push/c/l;

    if-nez v1, :cond_e

    new-instance v1, Lcom/igexin/push/c/l;

    invoke-direct {v1}, Lcom/igexin/push/c/l;-><init>()V

    sput-object v1, Lcom/igexin/push/c/l;->e:Lcom/igexin/push/c/l;

    :cond_e
    sget-object v1, Lcom/igexin/push/c/l;->e:Lcom/igexin/push/c/l;
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
.method public a(Lcom/igexin/push/c/g;Lcom/igexin/push/c/j;)V
    .registers 4

    if-eqz p2, :cond_28

    invoke-virtual {p2}, Lcom/igexin/push/c/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_28

    :cond_d
    invoke-virtual {p2}, Lcom/igexin/push/c/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igexin/push/c/l;->a(Ljava/lang/String;)Lcom/igexin/push/c/q;

    move-result-object v0

    if-nez v0, :cond_18

    return-void

    :cond_18
    invoke-virtual {p0, p2}, Lcom/igexin/push/c/l;->b(Lcom/igexin/push/c/j;)V

    invoke-virtual {v0}, Lcom/igexin/push/c/q;->i()V

    invoke-virtual {p0}, Lcom/igexin/push/c/l;->m()V

    sget-object p2, Lcom/igexin/push/c/g;->a:Lcom/igexin/push/c/g;

    if-ne p1, p2, :cond_28

    invoke-virtual {p0}, Lcom/igexin/push/c/l;->l()V

    :cond_28
    :goto_28
    return-void
.end method

.method public a(Lcom/igexin/push/c/j;)V
    .registers 2

    return-void
.end method

.method public b()Lcom/igexin/push/c/h;
    .registers 2

    sget-object v0, Lcom/igexin/push/c/h;->b:Lcom/igexin/push/c/h;

    return-object v0
.end method

.method public c()Lcom/igexin/push/c/p;
    .registers 1

    return-object p0
.end method
