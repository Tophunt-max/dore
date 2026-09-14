###### Class com.alibaba.android.bindingx.plugin.weex.BindingXGestureHandler (com.alibaba.android.bindingx.plugin.weex.BindingXGestureHandler)
.class public Lcom/alibaba/android/bindingx/plugin/weex/BindingXGestureHandler;
.super Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;
.source "BindingXGestureHandler.java"


# instance fields
.field private experimental:Z

.field private mWeexGestureHandler:Lcom/taobao/weex/ui/view/gesture/WXGesture;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)V
    .registers 4

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;-><init>(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXGestureHandler;->experimental:Z

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXGestureHandler;->mWeexGestureHandler:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-void
.end method


# virtual methods
.method public onCreate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 60
    iget-boolean v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXGestureHandler;->experimental:Z

    if-nez v0, :cond_9

    .line 62
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->onCreate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 65
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXGestureHandler;->mAnchorInstanceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXGestureHandler;->mInstanceId:Ljava/lang/String;

    goto :goto_16

    :cond_14
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXGestureHandler;->mAnchorInstanceId:Ljava/lang/String;

    .line 66
    :goto_16
    invoke-static {v0, p1}, Lcom/alibaba/android/bindingx/plugin/weex/WXModuleUtils;->findComponentByRef(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-nez v0, :cond_21

    .line 68
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->onCreate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 70
    :cond_21
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    .line 71
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_81

    instance-of v1, v0, Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;

    if-nez v1, :cond_2e

    goto :goto_81

    .line 76
    :cond_2e
    :try_start_2e
    check-cast v0, Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;

    .line 77
    invoke-interface {v0}, Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;->getGestureListener()Lcom/taobao/weex/ui/view/gesture/WXGesture;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXGestureHandler;->mWeexGestureHandler:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v0, :cond_5e

    .line 79
    invoke-virtual {v0, p0}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->addOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ExpressionGestureHandler] onCreate success. {source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/bindingx/core/LogProxy;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 83
    :cond_5e
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->onCreate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_62
    .catchall {:try_start_2e .. :try_end_62} :catchall_63

    return p1

    :catchall_63
    move-exception v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "experimental gesture features open failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;)V

    .line 88
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->onCreate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 72
    :cond_81
    :goto_81
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->onCreate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onDisable(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 94
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->onDisable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 95
    iget-boolean p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXGestureHandler;->experimental:Z

    if-eqz p2, :cond_2b

    iget-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXGestureHandler;->mWeexGestureHandler:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz p2, :cond_2b

    .line 97
    :try_start_c
    invoke-virtual {p2, p0}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->removeTouchListener(Landroid/view/View$OnTouchListener;)Z

    move-result p2
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_12

    or-int/2addr p1, p2

    goto :goto_2b

    :catchall_12
    move-exception p2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ExpressionGestureHandler]  disabled failed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;)V

    :cond_2b
    :goto_2b
    return p1
.end method

.method public setGlobalConfig(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-super {p0, p1}, Lcom/alibaba/android/bindingx/core/internal/BindingXTouchHandler;->setGlobalConfig(Ljava/util/Map;)V

    if-eqz p1, :cond_1a

    const-string v0, "experimentalGestureFeatures"

    .line 54
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXGestureHandler;->experimental:Z

    :cond_1a
    return-void
.end method
