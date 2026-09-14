###### Class com.taobao.weex.ui.component.list.template.TemplateCache (com.taobao.weex.ui.component.list.template.TemplateCache)
.class Lcom/taobao/weex/ui/component/list/template/TemplateCache;
.super Ljava/lang/Object;
.source "TemplateCache.java"


# instance fields
.field cells:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/taobao/weex/ui/component/list/WXCell;",
            ">;"
        }
    .end annotation
.end field

.field isLoadIng:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->isLoadIng:Z

    return-void
.end method
