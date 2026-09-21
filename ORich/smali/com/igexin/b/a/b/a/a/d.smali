###### Class com.igexin.b.a.b.a.a.d (com.igexin.b.a.b.a.a.d)
.class public Lcom/igexin/b/a/b/a/a/d;
.super Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    :try_start_0
    sget-object v0, Lcom/igexin/b/a/b/a/a/e;->a:[I

    invoke-static {}, Lcom/igexin/b/a/b/a/a/q;->a()[Lcom/igexin/b/a/b/a/a/q;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/igexin/b/a/b/a/a/q;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_44

    const/4 v1, 0x3

    if-eq v0, v1, :cond_38

    const/4 p1, 0x4

    if-eq v0, p1, :cond_30

    const/4 p1, 0x5

    if-eq v0, p1, :cond_28

    const/4 p1, 0x6

    if-eq v0, p1, :cond_20

    goto :goto_4b

    :cond_20
    invoke-static {}, Lcom/igexin/b/a/b/a/a/f;->a()Lcom/igexin/b/a/b/a/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/b/a/b/a/a/f;->b()V

    goto :goto_4b

    :cond_28
    invoke-static {}, Lcom/igexin/b/a/b/a/a/f;->a()Lcom/igexin/b/a/b/a/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/b/a/b/a/a/f;->f()V

    goto :goto_4b

    :cond_30
    invoke-static {}, Lcom/igexin/b/a/b/a/a/f;->a()Lcom/igexin/b/a/b/a/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/b/a/b/a/a/f;->h()V

    goto :goto_4b

    :cond_38
    invoke-static {}, Lcom/igexin/b/a/b/a/a/f;->a()Lcom/igexin/b/a/b/a/a/f;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/net/Socket;

    invoke-virtual {v0, p1}, Lcom/igexin/b/a/b/a/a/f;->a(Ljava/net/Socket;)V

    goto :goto_4b

    :cond_44
    invoke-static {}, Lcom/igexin/b/a/b/a/a/f;->a()Lcom/igexin/b/a/b/a/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/b/a/b/a/a/f;->g()V
    :try_end_4b
    .catchall {:try_start_0 .. :try_end_4b} :catchall_4b

    :catchall_4b
    :goto_4b
    return-void
.end method
