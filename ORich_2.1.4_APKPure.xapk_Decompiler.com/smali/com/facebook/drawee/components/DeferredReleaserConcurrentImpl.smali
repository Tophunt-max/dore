###### Class com.facebook.drawee.components.DeferredReleaserConcurrentImpl (com.facebook.drawee.components.DeferredReleaserConcurrentImpl)
.class Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;
.super Lcom/facebook/drawee/components/DeferredReleaser;
.source "DeferredReleaserConcurrentImpl.java"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mPendingReleasables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/drawee/components/DeferredReleaser$Releasable;",
            ">;"
        }
    .end annotation
.end field

.field private mTempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/drawee/components/DeferredReleaser$Releasable;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;

.field private final releaseRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 50
    invoke-direct {p0}, Lcom/facebook/drawee/components/DeferredReleaser;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->mLock:Ljava/lang/Object;

    .line 30
    new-instance v0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;

    invoke-direct {v0, p0}, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;-><init>(Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;)V

    iput-object v0, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->releaseRunnable:Ljava/lang/Runnable;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->mPendingReleasables:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->mTempList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;)Ljava/lang/Object;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;)Ljava/util/ArrayList;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->mTempList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$102(Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->mTempList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;)Ljava/util/ArrayList;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->mPendingReleasables:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$202(Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->mPendingReleasables:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method public cancelDeferredRelease(Lcom/facebook/drawee/components/DeferredReleaser$Releasable;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "releasable"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_3
    iget-object v1, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->mPendingReleasables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 87
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public scheduleDeferredRelease(Lcom/facebook/drawee/components/DeferredReleaser$Releasable;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "releasable"
        }
    .end annotation

    .line 59
    invoke-static {}, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->isOnUiThread()Z

    move-result v0

    if-nez v0, :cond_a

    .line 60
    invoke-interface {p1}, Lcom/facebook/drawee/components/DeferredReleaser$Releasable;->release()V

    return-void

    .line 65
    :cond_a
    iget-object v0, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_d
    iget-object v1, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->mPendingReleasables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 67
    monitor-exit v0

    return-void

    .line 69
    :cond_17
    iget-object v1, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->mPendingReleasables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object p1, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->mPendingReleasables:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    .line 71
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_32

    if-eqz v1, :cond_31

    .line 76
    iget-object p1, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->mUiHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->releaseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_31
    return-void

    :catchall_32
    move-exception p1

    .line 71
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p1
.end method

###### Class com.facebook.drawee.components.DeferredReleaserConcurrentImpl.AnonymousClass1 (com.facebook.drawee.components.DeferredReleaserConcurrentImpl$1)
.class Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;
.super Ljava/lang/Object;
.source "DeferredReleaserConcurrentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;


# direct methods
.method constructor <init>(Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;->this$0:Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 36
    iget-object v0, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;->this$0:Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;

    invoke-static {v0}, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->access$000(Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 37
    :try_start_7
    iget-object v1, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;->this$0:Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;

    invoke-static {v1}, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->access$100(Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;)Ljava/util/ArrayList;

    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;->this$0:Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;

    invoke-static {v2}, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->access$200(Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->access$102(Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 39
    iget-object v2, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;->this$0:Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;

    invoke-static {v2, v1}, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->access$202(Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 40
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_45

    const/4 v0, 0x0

    .line 43
    iget-object v1, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;->this$0:Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;

    invoke-static {v1}, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->access$100(Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_27
    if-ge v0, v1, :cond_3b

    .line 44
    iget-object v2, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;->this$0:Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;

    invoke-static {v2}, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->access$100(Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/components/DeferredReleaser$Releasable;

    invoke-interface {v2}, Lcom/facebook/drawee/components/DeferredReleaser$Releasable;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 46
    :cond_3b
    iget-object v0, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;->this$0:Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;

    invoke-static {v0}, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->access$100(Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :catchall_45
    move-exception v1

    .line 40
    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1
.end method
