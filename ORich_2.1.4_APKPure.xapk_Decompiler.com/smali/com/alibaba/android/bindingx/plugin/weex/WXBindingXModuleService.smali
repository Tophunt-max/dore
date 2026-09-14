###### Class com.alibaba.android.bindingx.plugin.weex.WXBindingXModuleService (com.alibaba.android.bindingx.plugin.weex.WXBindingXModuleService)
.class public Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModuleService;
.super Landroid/app/Service;
.source "WXBindingXModuleService.java"

# interfaces
.implements Lcom/taobao/weex/ui/IExternalModuleGetter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public getExternalModuleClass(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/weex/common/WXModule;",
            ">;"
        }
    .end annotation

    const-string p2, "bindingx"

    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 38
    const-class p1, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    return-object p1

    :cond_b
    const-string p2, "binding"

    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 40
    const-class p1, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    return-object p1

    :cond_16
    const-string p2, "expressionBinding"

    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 42
    const-class p1, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;

    return-object p1

    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method
