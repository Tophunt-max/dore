###### Class com.igexin.assist.control.fcm.c (com.igexin.assist.control.fcm.c)
.class final Lcom/igexin/assist/control/fcm/c;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/igexin/assist/control/fcm/GTJobService;


# direct methods
.method private constructor <init>(Lcom/igexin/assist/control/fcm/GTJobService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/igexin/assist/control/fcm/c;->a:Lcom/igexin/assist/control/fcm/GTJobService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/igexin/assist/control/fcm/GTJobService;Landroid/os/Looper;Lcom/igexin/assist/control/fcm/a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/igexin/assist/control/fcm/c;-><init>(Lcom/igexin/assist/control/fcm/GTJobService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p0, Lcom/igexin/assist/control/fcm/c;->a:Lcom/igexin/assist/control/fcm/GTJobService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/igexin/assist/control/fcm/GTJobService;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/igexin/assist/control/fcm/c;->a:Lcom/igexin/assist/control/fcm/GTJobService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/igexin/assist/control/fcm/GTJobService;->stopSelf(I)V

    return-void
.end method
