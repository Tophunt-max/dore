###### Class com.alibaba.android.bindingx.plugin.weex.BindingX (com.alibaba.android.bindingx.plugin.weex.BindingX)
.class public Lcom/alibaba/android/bindingx/plugin/weex/BindingX;
.super Ljava/lang/Object;
.source "BindingX.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static register()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .line 36
    const-class v0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;

    const-string v1, "expressionBinding"

    invoke-static {v1, v0}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 37
    const-class v0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    const-string v1, "binding"

    invoke-static {v1, v0}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 38
    const-class v0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    const-string v1, "bindingx"

    invoke-static {v1, v0}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    return-void
.end method
