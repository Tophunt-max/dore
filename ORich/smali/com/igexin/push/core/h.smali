###### Class com.igexin.push.core.h (com.igexin.push.core.h)
.class public Lcom/igexin/push/core/h;
.super Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "CoreThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .registers 2

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/e;->c()V

    return-void
.end method
