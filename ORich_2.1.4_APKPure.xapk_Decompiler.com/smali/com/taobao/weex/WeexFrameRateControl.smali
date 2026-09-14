###### Class com.taobao.weex.WeexFrameRateControl (com.taobao.weex.WeexFrameRateControl)
.class public Lcom/taobao/weex/WeexFrameRateControl;
.super Ljava/lang/Object;
.source "WeexFrameRateControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;
    }
.end annotation


# static fields
.field private static final VSYNC_FRAME:J = 0x10L


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;)V
    .registers 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl;->mListener:Ljava/lang/ref/WeakReference;

    .line 45
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0xf

    if-le p1, v1, :cond_21

    .line 46
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/WeexFrameRateControl;->mChoreographer:Landroid/view/Choreographer;

    .line 47
    new-instance p1, Lcom/taobao/weex/WeexFrameRateControl$1;

    invoke-direct {p1, p0}, Lcom/taobao/weex/WeexFrameRateControl$1;-><init>(Lcom/taobao/weex/WeexFrameRateControl;)V

    iput-object p1, p0, Lcom/taobao/weex/WeexFrameRateControl;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 66
    iput-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl;->runnable:Ljava/lang/Runnable;

    goto :goto_2c

    .line 69
    :cond_21
    new-instance p1, Lcom/taobao/weex/WeexFrameRateControl$2;

    invoke-direct {p1, p0}, Lcom/taobao/weex/WeexFrameRateControl$2;-><init>(Lcom/taobao/weex/WeexFrameRateControl;)V

    iput-object p1, p0, Lcom/taobao/weex/WeexFrameRateControl;->runnable:Ljava/lang/Runnable;

    .line 87
    iput-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl;->mChoreographer:Landroid/view/Choreographer;

    .line 88
    iput-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    :goto_2c
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/WeexFrameRateControl;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/taobao/weex/WeexFrameRateControl;->mListener:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/weex/WeexFrameRateControl;)Landroid/view/Choreographer$FrameCallback;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/taobao/weex/WeexFrameRateControl;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/WeexFrameRateControl;)Landroid/view/Choreographer;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/taobao/weex/WeexFrameRateControl;->mChoreographer:Landroid/view/Choreographer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/weex/WeexFrameRateControl;)Ljava/lang/Runnable;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/taobao/weex/WeexFrameRateControl;->runnable:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public start()V
    .registers 5

    .line 94
    iget-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_a

    .line 95
    iget-object v1, p0, Lcom/taobao/weex/WeexFrameRateControl;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_1d

    .line 97
    :cond_a
    iget-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1d

    .line 98
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WeexFrameRateControl;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public stop()V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_a

    .line 105
    iget-object v1, p0, Lcom/taobao/weex/WeexFrameRateControl;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_1b

    .line 106
    :cond_a
    iget-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1b

    .line 107
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WeexFrameRateControl;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/WXRenderManager;->removeTask(Ljava/lang/Runnable;)V

    :cond_1b
    :goto_1b
    return-void
.end method

###### Class com.taobao.weex.WeexFrameRateControl.AnonymousClass1 (com.taobao.weex.WeexFrameRateControl$1)
.class Lcom/taobao/weex/WeexFrameRateControl$1;
.super Ljava/lang/Object;
.source "WeexFrameRateControl.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WeexFrameRateControl;-><init>(Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WeexFrameRateControl;


# direct methods
.method constructor <init>(Lcom/taobao/weex/WeexFrameRateControl;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/taobao/weex/WeexFrameRateControl$1;->this$0:Lcom/taobao/weex/WeexFrameRateControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 4

    .line 52
    iget-object p1, p0, Lcom/taobao/weex/WeexFrameRateControl$1;->this$0:Lcom/taobao/weex/WeexFrameRateControl;

    invoke-static {p1}, Lcom/taobao/weex/WeexFrameRateControl;->access$000(Lcom/taobao/weex/WeexFrameRateControl;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_3d

    iget-object p1, p0, Lcom/taobao/weex/WeexFrameRateControl$1;->this$0:Lcom/taobao/weex/WeexFrameRateControl;

    invoke-static {p1}, Lcom/taobao/weex/WeexFrameRateControl;->access$000(Lcom/taobao/weex/WeexFrameRateControl;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;

    if-eqz p1, :cond_3d

    .line 54
    :try_start_16
    invoke-interface {p1}, Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;->OnVSync()V

    .line 55
    iget-object p2, p0, Lcom/taobao/weex/WeexFrameRateControl$1;->this$0:Lcom/taobao/weex/WeexFrameRateControl;

    invoke-static {p2}, Lcom/taobao/weex/WeexFrameRateControl;->access$200(Lcom/taobao/weex/WeexFrameRateControl;)Landroid/view/Choreographer;

    move-result-object p2

    iget-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl$1;->this$0:Lcom/taobao/weex/WeexFrameRateControl;

    invoke-static {v0}, Lcom/taobao/weex/WeexFrameRateControl;->access$100(Lcom/taobao/weex/WeexFrameRateControl;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_28
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_16 .. :try_end_28} :catch_29

    goto :goto_3d

    :catch_29
    move-exception p2

    .line 57
    instance-of v0, p1, Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_3d

    .line 58
    check-cast p1, Lcom/taobao/weex/WXSDKInstance;

    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 59
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 58
    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    :goto_3d
    return-void
.end method

###### Class com.taobao.weex.WeexFrameRateControl.AnonymousClass2 (com.taobao.weex.WeexFrameRateControl$2)
.class Lcom/taobao/weex/WeexFrameRateControl$2;
.super Ljava/lang/Object;
.source "WeexFrameRateControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WeexFrameRateControl;-><init>(Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WeexFrameRateControl;


# direct methods
.method constructor <init>(Lcom/taobao/weex/WeexFrameRateControl;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/taobao/weex/WeexFrameRateControl$2;->this$0:Lcom/taobao/weex/WeexFrameRateControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 73
    iget-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl$2;->this$0:Lcom/taobao/weex/WeexFrameRateControl;

    invoke-static {v0}, Lcom/taobao/weex/WeexFrameRateControl;->access$000(Lcom/taobao/weex/WeexFrameRateControl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/taobao/weex/WeexFrameRateControl$2;->this$0:Lcom/taobao/weex/WeexFrameRateControl;

    invoke-static {v0}, Lcom/taobao/weex/WeexFrameRateControl;->access$000(Lcom/taobao/weex/WeexFrameRateControl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;

    if-eqz v0, :cond_41

    .line 75
    :try_start_16
    invoke-interface {v0}, Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;->OnVSync()V

    .line 76
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/WeexFrameRateControl$2;->this$0:Lcom/taobao/weex/WeexFrameRateControl;

    invoke-static {v2}, Lcom/taobao/weex/WeexFrameRateControl;->access$300(Lcom/taobao/weex/WeexFrameRateControl;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x10

    invoke-virtual {v1, v2, v3, v4}, Lcom/taobao/weex/ui/WXRenderManager;->postOnUiThread(Ljava/lang/Runnable;J)V
    :try_end_2c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_16 .. :try_end_2c} :catch_2d

    goto :goto_41

    :catch_2d
    move-exception v1

    .line 78
    instance-of v2, v0, Lcom/taobao/weex/WXSDKInstance;

    if-eqz v2, :cond_41

    .line 79
    check-cast v0, Lcom/taobao/weex/WXSDKInstance;

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 80
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v2, v1}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    :goto_41
    return-void
.end method

###### Class com.taobao.weex.WeexFrameRateControl.VSyncListener (com.taobao.weex.WeexFrameRateControl$VSyncListener)
.class public interface abstract Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;
.super Ljava/lang/Object;
.source "WeexFrameRateControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/WeexFrameRateControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VSyncListener"
.end annotation


# virtual methods
.method public abstract OnVSync()V
.end method
