###### Class io.dcloud.common.adapter.util.AsyncTaskHandler (io.dcloud.common.adapter.util.AsyncTaskHandler)
.class public Lio/dcloud/common/adapter/util/AsyncTaskHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;,
        Lio/dcloud/common/adapter/util/AsyncTaskHandler$MyAsyncTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeAsyncTask(Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;[Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Lio/dcloud/common/adapter/util/AsyncTaskHandler$MyAsyncTask;

    invoke-direct {v0, p0}, Lio/dcloud/common/adapter/util/AsyncTaskHandler$MyAsyncTask;-><init>(Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;)V

    const/4 p0, 0x1

    new-array p0, p0, [[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, p0, v1

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static executeThreadTask(Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;)V
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/common/adapter/util/AsyncTaskHandler$1;

    invoke-direct {v1, p0}, Lio/dcloud/common/adapter/util/AsyncTaskHandler$1;-><init>(Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, p0}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;Z)V

    return-void
.end method

###### Class io.dcloud.common.adapter.util.AsyncTaskHandler.AnonymousClass1 (io.dcloud.common.adapter.util.AsyncTaskHandler$1)
.class final Lio/dcloud/common/adapter/util/AsyncTaskHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/util/AsyncTaskHandler;->executeThreadTask(Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pTask:Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/AsyncTaskHandler$1;->val$pTask:Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/AsyncTaskHandler$1;->val$pTask:Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;

    if-eqz v0, :cond_15

    .line 2
    invoke-interface {v0}, Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;->onExecuteBegin()V

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/util/AsyncTaskHandler$1;->val$pTask:Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;

    invoke-interface {v0}, Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;->onExecuting()Ljava/lang/Object;

    move-result-object v0

    .line 4
    new-instance v1, Lio/dcloud/common/adapter/util/AsyncTaskHandler$1$1;

    invoke-direct {v1, p0, v0}, Lio/dcloud/common/adapter/util/AsyncTaskHandler$1$1;-><init>(Lio/dcloud/common/adapter/util/AsyncTaskHandler$1;Ljava/lang/Object;)V

    invoke-static {v1}, Lio/dcloud/common/adapter/util/MessageHandler;->post(Ljava/lang/Runnable;)V

    :cond_15
    return-void
.end method

###### Class io.dcloud.common.adapter.util.AsyncTaskHandler.AnonymousClass1.RunnableC00261 (io.dcloud.common.adapter.util.AsyncTaskHandler$1$1)
.class Lio/dcloud/common/adapter/util/AsyncTaskHandler$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/util/AsyncTaskHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/util/AsyncTaskHandler$1;

.field final synthetic val$ob:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/util/AsyncTaskHandler$1;Ljava/lang/Object;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/AsyncTaskHandler$1$1;->this$0:Lio/dcloud/common/adapter/util/AsyncTaskHandler$1;

    iput-object p2, p0, Lio/dcloud/common/adapter/util/AsyncTaskHandler$1$1;->val$ob:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/AsyncTaskHandler$1$1;->this$0:Lio/dcloud/common/adapter/util/AsyncTaskHandler$1;

    iget-object v0, v0, Lio/dcloud/common/adapter/util/AsyncTaskHandler$1;->val$pTask:Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;

    iget-object v1, p0, Lio/dcloud/common/adapter/util/AsyncTaskHandler$1$1;->val$ob:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;->onExecuteEnd(Ljava/lang/Object;)V

    return-void
.end method

###### Class io.dcloud.common.adapter.util.AsyncTaskHandler.IAsyncTaskListener (io.dcloud.common.adapter.util.AsyncTaskHandler$IAsyncTaskListener)
.class public interface abstract Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/util/AsyncTaskHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IAsyncTaskListener"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onExecuteBegin()V
.end method

.method public abstract onExecuteEnd(Ljava/lang/Object;)V
.end method

.method public abstract onExecuting()Ljava/lang/Object;
.end method

###### Class io.dcloud.common.adapter.util.AsyncTaskHandler.MyAsyncTask (io.dcloud.common.adapter.util.AsyncTaskHandler$MyAsyncTask)
.class Lio/dcloud/common/adapter/util/AsyncTaskHandler$MyAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/util/AsyncTaskHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "[",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field mListener:Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/common/adapter/util/AsyncTaskHandler$MyAsyncTask;->mListener:Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;

    .line 4
    iput-object p1, p0, Lio/dcloud/common/adapter/util/AsyncTaskHandler$MyAsyncTask;->mListener:Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/dcloud/common/adapter/util/AsyncTaskHandler$MyAsyncTask;->doInBackground([[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([[Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 2
    iget-object p1, p0, Lio/dcloud/common/adapter/util/AsyncTaskHandler$MyAsyncTask;->mListener:Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;

    invoke-interface {p1}, Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;->onExecuting()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/util/AsyncTaskHandler$MyAsyncTask;->mListener:Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;

    invoke-interface {v0, p1}, Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;->onExecuteEnd(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/util/AsyncTaskHandler$MyAsyncTask;->mListener:Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;

    invoke-interface {v0}, Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;->onExecuteBegin()V

    return-void
.end method
