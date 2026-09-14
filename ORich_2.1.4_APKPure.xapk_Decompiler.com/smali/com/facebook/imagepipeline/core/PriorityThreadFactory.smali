###### Class com.facebook.imagepipeline.core.PriorityThreadFactory (com.facebook.imagepipeline.core.PriorityThreadFactory)
.class public Lcom/facebook/imagepipeline/core/PriorityThreadFactory;
.super Ljava/lang/Object;
.source "PriorityThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mAddThreadNumber:Z

.field private final mPrefix:Ljava/lang/String;

.field private final mThreadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mThreadPriority:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "threadPriority"
        }
    .end annotation

    const-string v0, "PriorityThreadFactory"

    const/4 v1, 0x1

    .line 32
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/imagepipeline/core/PriorityThreadFactory;-><init>(ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "threadPriority",
            "prefix",
            "addThreadNumber"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/PriorityThreadFactory;->mThreadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    iput p1, p0, Lcom/facebook/imagepipeline/core/PriorityThreadFactory;->mThreadPriority:I

    .line 37
    iput-object p2, p0, Lcom/facebook/imagepipeline/core/PriorityThreadFactory;->mPrefix:Ljava/lang/String;

    .line 38
    iput-boolean p3, p0, Lcom/facebook/imagepipeline/core/PriorityThreadFactory;->mAddThreadNumber:Z

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/core/PriorityThreadFactory;)I
    .registers 1

    .line 17
    iget p0, p0, Lcom/facebook/imagepipeline/core/PriorityThreadFactory;->mThreadPriority:I

    return p0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/facebook/imagepipeline/core/PriorityThreadFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/PriorityThreadFactory$1;-><init>(Lcom/facebook/imagepipeline/core/PriorityThreadFactory;Ljava/lang/Runnable;)V

    .line 56
    iget-boolean p1, p0, Lcom/facebook/imagepipeline/core/PriorityThreadFactory;->mAddThreadNumber:Z

    if-eqz p1, :cond_26

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/PriorityThreadFactory;->mPrefix:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/PriorityThreadFactory;->mThreadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_28

    .line 59
    :cond_26
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/PriorityThreadFactory;->mPrefix:Ljava/lang/String;

    .line 61
    :goto_28
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v1
.end method

###### Class com.facebook.imagepipeline.core.PriorityThreadFactory.AnonymousClass1 (com.facebook.imagepipeline.core.PriorityThreadFactory$1)
.class Lcom/facebook/imagepipeline/core/PriorityThreadFactory$1;
.super Ljava/lang/Object;
.source "PriorityThreadFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/core/PriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/core/PriorityThreadFactory;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/core/PriorityThreadFactory;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$runnable"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/PriorityThreadFactory$1;->this$0:Lcom/facebook/imagepipeline/core/PriorityThreadFactory;

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/PriorityThreadFactory$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/PriorityThreadFactory$1;->this$0:Lcom/facebook/imagepipeline/core/PriorityThreadFactory;

    invoke-static {v0}, Lcom/facebook/imagepipeline/core/PriorityThreadFactory;->access$000(Lcom/facebook/imagepipeline/core/PriorityThreadFactory;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_9

    .line 52
    :catchall_9
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/PriorityThreadFactory$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
