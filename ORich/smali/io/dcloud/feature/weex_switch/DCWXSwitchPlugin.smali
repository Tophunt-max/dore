###### Class io.dcloud.feature.weex_switch.DCWXSwitchPlugin (io.dcloud.feature.weex_switch.DCWXSwitchPlugin)
.class public Lio/dcloud/feature/weex_switch/DCWXSwitchPlugin;
.super Ljava/lang/Object;
.source "DCWXSwitchPlugin.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initPlugin(Landroid/content/Context;)V
    .registers 3

    :try_start_0
    const-string p0, "dc-switch"

    .line 13
    const-class v0, Lio/dcloud/feature/weex_switch/DCWXSwitch;

    invoke-static {p0, v0}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 14
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p0

    const-string v0, "switch"

    const-class v1, Lio/dcloud/feature/weex_switch/DCWXSwitch;

    invoke-virtual {p0, v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->addComponentByName(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_12
    .catch Lcom/taobao/weex/common/WXException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception p0

    .line 16
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXException;->printStackTrace()V

    :goto_17
    return-void
.end method
