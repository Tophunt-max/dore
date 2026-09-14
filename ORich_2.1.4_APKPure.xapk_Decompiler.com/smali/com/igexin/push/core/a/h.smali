###### Class com.igexin.push.core.a.h (com.igexin.push.core.a.h)
.class Lcom/igexin/push/core/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/core/e/e;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/igexin/push/core/a/g;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/a/g;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/igexin/push/core/a/h;->b:Lcom/igexin/push/core/a/g;

    iput-object p2, p0, Lcom/igexin/push/core/a/h;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .registers 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    sget-object p1, Lcom/igexin/push/core/f;->aC:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/igexin/push/core/c/h;->h(Ljava/lang/String;)Z

    :cond_15
    iget-object p1, p0, Lcom/igexin/push/core/a/h;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_18
    iget-object p2, p0, Lcom/igexin/push/core/a/h;->b:Lcom/igexin/push/core/a/g;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/igexin/push/core/a/g;->a(Lcom/igexin/push/core/a/g;Z)Z

    iget-object p2, p0, Lcom/igexin/push/core/a/h;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_25
    move-exception p2

    monitor-exit p1
    :try_end_27
    .catchall {:try_start_18 .. :try_end_27} :catchall_25

    throw p2
.end method
