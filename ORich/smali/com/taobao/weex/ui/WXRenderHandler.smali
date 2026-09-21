###### Class com.taobao.weex.ui.WXRenderHandler (com.taobao.weex.ui.WXRenderHandler)
.class Lcom/taobao/weex/ui/WXRenderHandler;
.super Landroid/os/Handler;
.source "WXRenderHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 40
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public final post(Ljava/lang/String;Ljava/lang/Runnable;)Z
    .registers 5

    .line 32
    invoke-static {p0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p2

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p2, Landroid/os/Message;->what:I

    const-wide/16 v0, 0x0

    .line 35
    invoke-virtual {p0, p2, v0, v1}, Lcom/taobao/weex/ui/WXRenderHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method
