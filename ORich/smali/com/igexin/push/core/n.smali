###### Class com.igexin.push.core.n (com.igexin.push.core.n)
.class public Lcom/igexin/push/core/n;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:Lcom/igexin/push/core/n;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a()Lcom/igexin/push/core/n;
    .registers 1

    sget-object v0, Lcom/igexin/push/core/n;->a:Lcom/igexin/push/core/n;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/core/n;

    invoke-direct {v0}, Lcom/igexin/push/core/n;-><init>()V

    sput-object v0, Lcom/igexin/push/core/n;->a:Lcom/igexin/push/core/n;

    :cond_b
    sget-object v0, Lcom/igexin/push/core/n;->a:Lcom/igexin/push/core/n;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object p1

    if-eqz p1, :cond_18

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    sget v0, Lcom/igexin/push/core/b;->f:I

    iput v0, p1, Landroid/os/Message;->what:I

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/igexin/push/core/e;->a(Landroid/os/Message;)Z

    :cond_18
    return-void
.end method
