###### Class com.alibaba.android.bindingx.core.internal.AnimationFrame (com.alibaba.android.bindingx.core.internal.AnimationFrame)
.class abstract Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;
.super Ljava/lang/Object;
.source "AnimationFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;,
        Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;,
        Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newInstance()Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;
    .registers 2

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_c

    .line 40
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;-><init>()V

    goto :goto_11

    .line 42
    :cond_c
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;-><init>()V

    :goto_11
    return-object v0
.end method


# virtual methods
.method abstract clear()V
.end method

.method abstract requestAnimationFrame(Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;)V
.end method

.method abstract terminate()V
.end method

###### Class com.alibaba.android.bindingx.core.internal.AnimationFrame.Callback (com.alibaba.android.bindingx.core.internal.AnimationFrame$Callback)
.class interface abstract Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;
.super Ljava/lang/Object;
.source "AnimationFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract doFrame()V
.end method

###### Class com.alibaba.android.bindingx.core.internal.AnimationFrame.ChoreographerAnimationFrameImpl (com.alibaba.android.bindingx.core.internal.AnimationFrame$ChoreographerAnimationFrameImpl)
.class Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;
.super Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;
.source "AnimationFrame.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChoreographerAnimationFrameImpl"
.end annotation


# instance fields
.field private callback:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;

.field private choreographer:Landroid/view/Choreographer;

.field private isRunning:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;-><init>()V

    .line 66
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_c

    .line 67
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 69
    :cond_c
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;->choreographer:Landroid/view/Choreographer;

    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;->choreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_7

    .line 75
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_7
    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;->isRunning:Z

    return-void
.end method

.method public doFrame(J)V
    .registers 3

    .line 97
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;->callback:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;

    if-eqz p1, :cond_7

    .line 98
    invoke-interface {p1}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;->doFrame()V

    .line 100
    :cond_7
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;->choreographer:Landroid/view/Choreographer;

    if-eqz p1, :cond_12

    iget-boolean p2, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;->isRunning:Z

    if-eqz p2, :cond_12

    .line 101
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_12
    return-void
.end method

.method requestAnimationFrame(Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;->callback:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;->isRunning:Z

    .line 90
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;->choreographer:Landroid/view/Choreographer;

    if-eqz p1, :cond_c

    .line 91
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_c
    return-void
.end method

.method terminate()V
    .registers 2

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;->clear()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;->choreographer:Landroid/view/Choreographer;

    return-void
.end method

###### Class com.alibaba.android.bindingx.core.internal.AnimationFrame.HandlerAnimationFrameImpl (com.alibaba.android.bindingx.core.internal.AnimationFrame$HandlerAnimationFrameImpl)
.class Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;
.super Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;
.source "AnimationFrame.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerAnimationFrameImpl"
.end annotation


# static fields
.field private static final DEFAULT_DELAY_MILLIS:J = 0x10L

.field private static final MSG_FRAME_CALLBACK:I = 0x64


# instance fields
.field private callback:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;

.field private isRunning:Z

.field private mInnerHandler:Landroid/os/Handler;

.field private mInnerHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 117
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;-><init>()V

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_a

    .line 119
    invoke-virtual {p0}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->terminate()V

    .line 121
    :cond_a
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "expression-timing-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandlerThread:Landroid/os/HandlerThread;

    .line 122
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 123
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method clear()V
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 129
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_8
    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->isRunning:Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    if-eqz p1, :cond_20

    .line 157
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_20

    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandler:Landroid/os/Handler;

    if-eqz p1, :cond_20

    .line 158
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->callback:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;

    if-eqz p1, :cond_13

    .line 159
    invoke-interface {p1}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;->doFrame()V

    .line 161
    :cond_13
    iget-boolean p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->isRunning:Z

    if-eqz p1, :cond_1e

    .line 162
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1e
    const/4 p1, 0x1

    return p1

    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method requestAnimationFrame(Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;)V
    .registers 3

    .line 148
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->callback:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;

    const/4 p1, 0x1

    .line 149
    iput-boolean p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->isRunning:Z

    .line 150
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandler:Landroid/os/Handler;

    if-eqz p1, :cond_e

    const/16 v0, 0x64

    .line 151
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_e
    return-void
.end method

.method terminate()V
    .registers 3

    .line 136
    invoke-virtual {p0}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->clear()V

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_f

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_14

    .line 140
    :cond_f
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :goto_14
    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandler:Landroid/os/Handler;

    .line 143
    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method
