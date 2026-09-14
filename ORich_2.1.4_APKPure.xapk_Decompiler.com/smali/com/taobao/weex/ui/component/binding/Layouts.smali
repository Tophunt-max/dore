###### Class com.taobao.weex.ui.component.binding.Layouts (com.taobao.weex.ui.component.binding.Layouts)
.class public Lcom/taobao/weex/ui/component/binding/Layouts;
.super Ljava/lang/Object;
.source "Layouts.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doLayoutAsync(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;Z)V
    .registers 6

    .line 47
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getHolderPosition()I

    move-result v1

    .line 49
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->asyncTask:Landroid/os/AsyncTask;

    const/4 v3, 0x0

    if-eqz v2, :cond_15

    .line 50
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->asyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v2, 0x0

    .line 51
    iput-object v2, p0, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->asyncTask:Landroid/os/AsyncTask;

    :cond_15
    if-eqz p1, :cond_26

    .line 54
    new-instance p1, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;

    invoke-direct {p1, p0, v1, v0}, Lcom/taobao/weex/ui/component/binding/AsynLayoutTask;-><init>(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;ILcom/taobao/weex/ui/component/WXComponent;)V

    .line 55
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->asyncTask:Landroid/os/AsyncTask;

    .line 56
    sget-object p0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {p1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_47

    .line 58
    :cond_26
    invoke-static {v0, p0}, Lcom/taobao/weex/ui/component/binding/Layouts;->doLayoutOnly(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;)V

    .line 59
    invoke-static {v0, v3}, Lcom/taobao/weex/ui/component/binding/Layouts;->setLayout(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    .line 60
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getHolderPosition()I

    move-result p1

    if-ltz p1, :cond_47

    .line 61
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getTemplateList()Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    move-result-object p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getTemplateList()Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getRef()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1, v0}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->findAllComponentRefs(Ljava/lang/String;ILcom/taobao/weex/ui/component/WXComponent;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "_attach_slot"

    invoke-virtual {p1, v0, p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_47
    :goto_47
    return-void
.end method

.method public static doLayoutOnly(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;)V
    .registers 3

    .line 79
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getTemplateList()Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getLayoutWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getTemplateList()Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getLayoutHeight()F

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/taobao/weex/ui/component/binding/Layouts;->doSafeLayout(Lcom/taobao/weex/ui/component/WXComponent;FF)V

    return-void
.end method

.method public static doLayoutSync(Lcom/taobao/weex/ui/component/list/WXCell;FF)V
    .registers 3

    .line 71
    invoke-static {p0, p1, p2}, Lcom/taobao/weex/ui/component/binding/Layouts;->doSafeLayout(Lcom/taobao/weex/ui/component/WXComponent;FF)V

    const/4 p1, 0x0

    .line 72
    invoke-static {p0, p1}, Lcom/taobao/weex/ui/component/binding/Layouts;->setLayout(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    return-void
.end method

.method private static doSafeLayout(Lcom/taobao/weex/ui/component/WXComponent;FF)V
    .registers 6

    const-string v0, "WXRecyclerTemplateList"

    .line 84
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 85
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeLayoutRenderObject(JFF)I

    move-result p1

    .line 88
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    if-gtz p1, :cond_43

    .line 94
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " WXTemplateList doSafeLayout wrong template "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p0

    const-string v1, "case"

    invoke-virtual {p0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " cell height "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 94
    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_39

    goto :goto_43

    :catch_39
    move-exception p0

    .line 98
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 99
    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_43
    :goto_43
    return-void
.end method

.method public static final setLayout(Lcom/taobao/weex/ui/component/WXComponent;Z)V
    .registers 5

    .line 111
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isWaste()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 114
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "resetAnimation"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 115
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 116
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->resetAnimaiton(Landroid/view/View;)V

    .line 119
    :cond_31
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v0

    .line 120
    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeRenderObjectHasNewLayout(J)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 121
    invoke-static {v0, v1, p0}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeRenderObjectUpdateComponent(JLcom/taobao/weex/ui/component/WXComponent;)V

    .line 123
    :cond_3e
    instance-of v0, p0, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_57

    .line 124
    check-cast p0, Lcom/taobao/weex/ui/component/WXVContainer;

    .line 125
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_49
    if-ge v1, v0, :cond_57

    .line 127
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    if-eqz v2, :cond_54

    .line 129
    invoke-static {v2, p1}, Lcom/taobao/weex/ui/component/binding/Layouts;->setLayout(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_57
    return-void
.end method
