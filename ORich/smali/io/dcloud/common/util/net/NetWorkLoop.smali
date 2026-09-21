###### Class io.dcloud.common.util.net.NetWorkLoop (io.dcloud.common.util.net.NetWorkLoop)
.class public Lio/dcloud/common/util/net/NetWorkLoop;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/util/net/NetWorkLoop$LoopComparator;
    }
.end annotation


# instance fields
.field private final MAX_EXE_REQUESTDATA:I

.field private mComparator:Lio/dcloud/common/util/net/NetWorkLoop$LoopComparator;

.field protected mExeTask:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lio/dcloud/common/util/net/NetWork;",
            ">;"
        }
    .end annotation
.end field

.field protected mQuestTask:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lio/dcloud/common/util/net/NetWork;",
            ">;"
        }
    .end annotation
.end field

.field protected mSyncThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lio/dcloud/common/util/net/NetWorkLoop;->MAX_EXE_REQUESTDATA:I

    .line 21
    new-instance v0, Lio/dcloud/common/util/net/NetWorkLoop$LoopComparator;

    invoke-direct {v0, p0}, Lio/dcloud/common/util/net/NetWorkLoop$LoopComparator;-><init>(Lio/dcloud/common/util/net/NetWorkLoop;)V

    iput-object v0, p0, Lio/dcloud/common/util/net/NetWorkLoop;->mComparator:Lio/dcloud/common/util/net/NetWorkLoop$LoopComparator;

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/dcloud/common/util/net/NetWorkLoop;->mQuestTask:Ljava/util/LinkedList;

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/dcloud/common/util/net/NetWorkLoop;->mExeTask:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public declared-synchronized addNetWork(Lio/dcloud/common/util/net/NetWork;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/common/util/net/NetWorkLoop;->mQuestTask:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lio/dcloud/common/util/net/NetWorkLoop;->mQuestTask:Ljava/util/LinkedList;

    iget-object v0, p0, Lio/dcloud/common/util/net/NetWorkLoop;->mComparator:Lio/dcloud/common/util/net/NetWorkLoop$LoopComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dispose()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/dcloud/common/util/net/NetWorkLoop;->mSyncThread:Ljava/lang/Thread;

    .line 3
    :try_start_3
    iget-object v1, p0, Lio/dcloud/common/util/net/NetWorkLoop;->mExeTask:Ljava/util/LinkedList;

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_2a

    .line 4
    iget-object v1, p0, Lio/dcloud/common/util/net/NetWorkLoop;->mExeTask:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/util/net/NetWork;

    .line 5
    invoke-virtual {v2}, Lio/dcloud/common/util/net/NetWork;->dispose()V

    goto :goto_13

    .line 7
    :cond_23
    iget-object v1, p0, Lio/dcloud/common/util/net/NetWorkLoop;->mExeTask:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 8
    iput-object v0, p0, Lio/dcloud/common/util/net/NetWorkLoop;->mExeTask:Ljava/util/LinkedList;

    .line 10
    :cond_2a
    iget-object v1, p0, Lio/dcloud/common/util/net/NetWorkLoop;->mQuestTask:Ljava/util/LinkedList;

    if-eqz v1, :cond_56

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_56

    .line 11
    iget-object v1, p0, Lio/dcloud/common/util/net/NetWorkLoop;->mQuestTask:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/util/net/NetWork;

    .line 12
    invoke-virtual {v2}, Lio/dcloud/common/util/net/NetWork;->dispose()V

    goto :goto_3a

    .line 14
    :cond_4a
    iget-object v1, p0, Lio/dcloud/common/util/net/NetWorkLoop;->mQuestTask:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 15
    iput-object v0, p0, Lio/dcloud/common/util/net/NetWorkLoop;->mQuestTask:Ljava/util/LinkedList;
    :try_end_51
    .catch Ljava/util/ConcurrentModificationException; {:try_start_3 .. :try_end_51} :catch_52

    goto :goto_56

    :catch_52
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    :cond_56
    :goto_56
    return-void
.end method

.method protected execSyncTask(Lio/dcloud/common/util/net/NetWork;)V
    .registers 2

    .line 1
    iput-object p0, p1, Lio/dcloud/common/util/net/NetWork;->mNetWorkLoop:Lio/dcloud/common/util/net/NetWorkLoop;

    .line 2
    invoke-virtual {p1}, Lio/dcloud/common/util/net/NetWork;->startWork()V

    return-void
.end method

.method public declared-synchronized removeNetWork(Lio/dcloud/common/util/net/NetWork;)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/common/util/net/NetWorkLoop;->mQuestTask:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    iget-object v0, p0, Lio/dcloud/common/util/net/NetWorkLoop;->mQuestTask:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 4
    :cond_e
    iget-object v0, p0, Lio/dcloud/common/util/net/NetWorkLoop;->mExeTask:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 5
    iget-object v0, p0, Lio/dcloud/common/util/net/NetWorkLoop;->mExeTask:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 8
    :cond_1b
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/common/util/net/NetWorkLoop$2;

    invoke-direct {v1, p0, p1}, Lio/dcloud/common/util/net/NetWorkLoop$2;-><init>(Lio/dcloud/common/util/net/NetWorkLoop;Lio/dcloud/common/util/net/NetWork;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_2a
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    goto :goto_2e

    :catchall_28
    move-exception p1

    goto :goto_30

    :catch_2a
    move-exception p1

    .line 18
    :try_start_2b
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_28

    :goto_2e
    monitor-exit p0

    return-void

    :goto_30
    monitor-exit p0

    throw p1
.end method

.method public startThreadPool()V
    .registers 2

    .line 1
    new-instance v0, Lio/dcloud/common/util/net/NetWorkLoop$1;

    invoke-direct {v0, p0}, Lio/dcloud/common/util/net/NetWorkLoop$1;-><init>(Lio/dcloud/common/util/net/NetWorkLoop;)V

    iput-object v0, p0, Lio/dcloud/common/util/net/NetWorkLoop;->mSyncThread:Ljava/lang/Thread;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

###### Class io.dcloud.common.util.net.NetWorkLoop.AnonymousClass1 (io.dcloud.common.util.net.NetWorkLoop$1)
.class Lio/dcloud/common/util/net/NetWorkLoop$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/net/NetWorkLoop;->startThreadPool()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/util/net/NetWorkLoop;


# direct methods
.method constructor <init>(Lio/dcloud/common/util/net/NetWorkLoop;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/net/NetWorkLoop$1;->this$0:Lio/dcloud/common/util/net/NetWorkLoop;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lio/dcloud/common/util/net/NetWorkLoop$1;->this$0:Lio/dcloud/common/util/net/NetWorkLoop;

    iget-object v1, v0, Lio/dcloud/common/util/net/NetWorkLoop;->mSyncThread:Ljava/lang/Thread;

    if-nez v1, :cond_7

    return-void

    .line 4
    :cond_7
    iget-object v0, v0, Lio/dcloud/common/util/net/NetWorkLoop;->mQuestTask:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    const-wide/16 v0, 0x64

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 7
    :cond_15
    iget-object v0, p0, Lio/dcloud/common/util/net/NetWorkLoop$1;->this$0:Lio/dcloud/common/util/net/NetWorkLoop;

    iget-object v0, v0, Lio/dcloud/common/util/net/NetWorkLoop;->mExeTask:Ljava/util/LinkedList;

    monitor-enter v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_52

    .line 8
    :try_start_1a
    iget-object v1, p0, Lio/dcloud/common/util/net/NetWorkLoop$1;->this$0:Lio/dcloud/common/util/net/NetWorkLoop;

    iget-object v1, v1, Lio/dcloud/common/util/net/NetWorkLoop;->mExeTask:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_4d

    .line 9
    iget-object v1, p0, Lio/dcloud/common/util/net/NetWorkLoop$1;->this$0:Lio/dcloud/common/util/net/NetWorkLoop;

    iget-object v1, v1, Lio/dcloud/common/util/net/NetWorkLoop;->mQuestTask:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_4f

    .line 10
    :try_start_2a
    iget-object v2, p0, Lio/dcloud/common/util/net/NetWorkLoop$1;->this$0:Lio/dcloud/common/util/net/NetWorkLoop;

    iget-object v2, v2, Lio/dcloud/common/util/net/NetWorkLoop;->mQuestTask:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/util/net/NetWork;

    .line 11
    iget-object v3, p0, Lio/dcloud/common/util/net/NetWorkLoop$1;->this$0:Lio/dcloud/common/util/net/NetWorkLoop;

    iget-object v3, v3, Lio/dcloud/common/util/net/NetWorkLoop;->mExeTask:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v3, p0, Lio/dcloud/common/util/net/NetWorkLoop$1;->this$0:Lio/dcloud/common/util/net/NetWorkLoop;

    iget-object v3, v3, Lio/dcloud/common/util/net/NetWorkLoop;->mQuestTask:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 13
    iget-object v3, p0, Lio/dcloud/common/util/net/NetWorkLoop$1;->this$0:Lio/dcloud/common/util/net/NetWorkLoop;

    invoke-virtual {v3, v2}, Lio/dcloud/common/util/net/NetWorkLoop;->execSyncTask(Lio/dcloud/common/util/net/NetWork;)V

    .line 14
    monitor-exit v1

    goto :goto_4d

    :catchall_4a
    move-exception v2

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_2a .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v2

    .line 16
    :cond_4d
    :goto_4d
    monitor-exit v0

    goto :goto_0

    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_4f

    :try_start_51
    throw v1
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_52} :catch_52

    :catch_52
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

###### Class io.dcloud.common.util.net.NetWorkLoop.AnonymousClass2 (io.dcloud.common.util.net.NetWorkLoop$2)
.class Lio/dcloud/common/util/net/NetWorkLoop$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/net/NetWorkLoop;->removeNetWork(Lio/dcloud/common/util/net/NetWork;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/util/net/NetWorkLoop;

.field final synthetic val$pTask:Lio/dcloud/common/util/net/NetWork;


# direct methods
.method constructor <init>(Lio/dcloud/common/util/net/NetWorkLoop;Lio/dcloud/common/util/net/NetWork;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/net/NetWorkLoop$2;->this$0:Lio/dcloud/common/util/net/NetWorkLoop;

    iput-object p2, p0, Lio/dcloud/common/util/net/NetWorkLoop$2;->val$pTask:Lio/dcloud/common/util/net/NetWork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/net/NetWorkLoop$2;->val$pTask:Lio/dcloud/common/util/net/NetWork;

    invoke-virtual {v0}, Lio/dcloud/common/util/net/NetWork;->cancelWork()V

    return-void
.end method

###### Class io.dcloud.common.util.net.NetWorkLoop.LoopComparator (io.dcloud.common.util.net.NetWorkLoop$LoopComparator)
.class Lio/dcloud/common/util/net/NetWorkLoop$LoopComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/net/NetWorkLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoopComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/dcloud/common/util/net/NetWork;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/util/net/NetWorkLoop;


# direct methods
.method constructor <init>(Lio/dcloud/common/util/net/NetWorkLoop;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/net/NetWorkLoop$LoopComparator;->this$0:Lio/dcloud/common/util/net/NetWorkLoop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lio/dcloud/common/util/net/NetWork;Lio/dcloud/common/util/net/NetWork;)I
    .registers 3

    .line 2
    iget p1, p1, Lio/dcloud/common/util/net/NetWork;->mPriority:I

    iget p2, p2, Lio/dcloud/common/util/net/NetWork;->mPriority:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lio/dcloud/common/util/net/NetWork;

    check-cast p2, Lio/dcloud/common/util/net/NetWork;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/common/util/net/NetWorkLoop$LoopComparator;->compare(Lio/dcloud/common/util/net/NetWork;Lio/dcloud/common/util/net/NetWork;)I

    move-result p1

    return p1
.end method
