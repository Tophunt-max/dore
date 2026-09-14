###### Class com.taobao.weex.ui.component.list.template.AsyncCellLoadTask (com.taobao.weex.ui.component.list.template.AsyncCellLoadTask)
.class Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;
.super Landroid/os/AsyncTask;
.source "AsyncCellLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private source:Lcom/taobao/weex/ui/component/list/WXCell;

.field private template:Ljava/lang/String;

.field private templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/taobao/weex/ui/component/list/WXCell;Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V
    .registers 4

    .line 42
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->template:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->source:Lcom/taobao/weex/ui/component/list/WXCell;

    .line 45
    iput-object p3, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;)Z
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->isDestory()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;)Ljava/lang/String;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->template:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;)Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    return-object p0
.end method

.method private isDestory()Z
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->source:Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXCell;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->source:Lcom/taobao/weex/ui/component/list/WXCell;

    .line 116
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXCell;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1c

    .line 119
    :cond_15
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->isDestoryed()Z

    move-result v0

    return v0

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 36
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    .line 53
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getTemplatesCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->template:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/list/template/TemplateCache;

    const/4 v0, 0x0

    if-eqz p1, :cond_44

    .line 54
    iget-object v1, p1, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v1, :cond_16

    goto :goto_44

    .line 57
    :cond_16
    :goto_16
    iget-object v1, p1, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getTemplateCacheSize()I

    move-result v2

    if-ge v1, v2, :cond_44

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 59
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->source:Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->copyComponentFromSourceCell(Lcom/taobao/weex/ui/component/list/WXCell;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 60
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    if-nez v1, :cond_37

    return-object v0

    .line 68
    :cond_37
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->isDestory()Z

    move-result v2

    if-eqz v2, :cond_3e

    return-object v0

    .line 71
    :cond_3e
    iget-object v2, p1, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_44
    :goto_44
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 36
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 5

    .line 81
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->isDestory()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 84
    :cond_7
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getTemplatesCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->template:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/list/template/TemplateCache;

    if-nez p1, :cond_18

    return-void

    .line 88
    :cond_18
    iget-object v0, p1, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    iget-object v0, p1, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 89
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-nez v0, :cond_26

    goto :goto_35

    .line 93
    :cond_26
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v2, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask$1;

    invoke-direct {v2, p0, p1}, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask$1;-><init>(Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;Lcom/taobao/weex/ui/component/list/template/TemplateCache;)V

    invoke-virtual {v0, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 111
    iput-boolean v1, p1, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->isLoadIng:Z

    return-void

    .line 90
    :cond_35
    :goto_35
    iput-boolean v1, p1, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->isLoadIng:Z

    return-void
.end method

.method public startTask()V
    .registers 3

    .line 126
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

###### Class com.taobao.weex.ui.component.list.template.AsyncCellLoadTask.AnonymousClass1 (com.taobao.weex.ui.component.list.template.AsyncCellLoadTask$1)
.class Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask$1;
.super Ljava/lang/Object;
.source "AsyncCellLoadTask.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;

.field final synthetic val$cellCache:Lcom/taobao/weex/ui/component/list/template/TemplateCache;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;Lcom/taobao/weex/ui/component/list/template/TemplateCache;)V
    .registers 3

    .line 93
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask$1;->this$0:Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask$1;->val$cellCache:Lcom/taobao/weex/ui/component/list/template/TemplateCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .registers 5

    .line 96
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask$1;->this$0:Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->access$000(Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 99
    :cond_a
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask$1;->val$cellCache:Lcom/taobao/weex/ui/component/list/template/TemplateCache;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 100
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 101
    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 103
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/WXCell;->isLazy()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 104
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask$1;->this$0:Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->access$200(Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;)Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask$1;->this$0:Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->access$100(Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->doCreateCellViewBindData(Lcom/taobao/weex/ui/component/list/WXCell;Ljava/lang/String;Z)V

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0

    :cond_38
    return v1
.end method
