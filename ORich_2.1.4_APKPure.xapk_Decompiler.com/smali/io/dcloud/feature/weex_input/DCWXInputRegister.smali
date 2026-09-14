###### Class io.dcloud.feature.weex_input.DCWXInputRegister (io.dcloud.feature.weex_input.DCWXInputRegister)
.class public Lio/dcloud/feature/weex_input/DCWXInputRegister;
.super Ljava/lang/Object;
.source "DCWXInputRegister.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initPlugin(Landroid/content/Context;)V
    .registers 3

    :try_start_0
    const-string p0, "u-input"

    .line 15
    const-class v0, Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {p0, v0}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string p0, "u-textarea"

    .line 16
    const-class v0, Lcom/taobao/weex/ui/component/DCTextArea;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 17
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p0

    const-string v0, "input"

    const-class v1, Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {p0, v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->addComponentByName(Ljava/lang/String;Ljava/lang/Class;)V

    .line 18
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p0

    const-string v0, "textarea"

    const-class v1, Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p0, v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->addComponentByName(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_25
    .catch Lcom/taobao/weex/common/WXException; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception p0

    .line 20
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXException;->printStackTrace()V

    :goto_2a
    return-void
.end method
