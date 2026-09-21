###### Class com.taobao.weex.ui.module.ConsoleLogModule (com.taobao.weex.ui.module.ConsoleLogModule)
.class public Lcom/taobao/weex/ui/module/ConsoleLogModule;
.super Lcom/taobao/weex/common/WXModule;
.source "ConsoleLogModule.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    return-void
.end method

.method private getLogLevel(Ljava/lang/String;)Lio/dcloud/feature/uniapp/utils/AbsLogLevel;
    .registers 4

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_5e

    goto :goto_48

    :sswitch_12
    const-string v1, "warning"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_48

    :cond_1b
    const/4 v0, 0x4

    goto :goto_48

    :sswitch_1d
    const-string v1, "error"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_48

    :cond_26
    const/4 v0, 0x3

    goto :goto_48

    :sswitch_28
    const-string v1, "debug"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_48

    :cond_31
    const/4 v0, 0x2

    goto :goto_48

    :sswitch_33
    const-string v1, "info"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    goto :goto_48

    :cond_3c
    const/4 v0, 0x1

    goto :goto_48

    :sswitch_3e
    const-string v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    goto :goto_48

    :cond_47
    const/4 v0, 0x0

    :goto_48
    packed-switch v0, :pswitch_data_74

    goto :goto_5b

    .line 76
    :pswitch_4c
    sget-object p1, Lcom/taobao/weex/utils/LogLevel;->WARN:Lcom/taobao/weex/utils/LogLevel;

    goto :goto_5c

    .line 73
    :pswitch_4f
    sget-object p1, Lcom/taobao/weex/utils/LogLevel;->ERROR:Lcom/taobao/weex/utils/LogLevel;

    goto :goto_5c

    .line 82
    :pswitch_52
    sget-object p1, Lcom/taobao/weex/utils/LogLevel;->DEBUG:Lcom/taobao/weex/utils/LogLevel;

    goto :goto_5c

    .line 79
    :pswitch_55
    sget-object p1, Lcom/taobao/weex/utils/LogLevel;->INFO:Lcom/taobao/weex/utils/LogLevel;

    goto :goto_5c

    .line 70
    :pswitch_58
    sget-object p1, Lcom/taobao/weex/utils/LogLevel;->OFF:Lcom/taobao/weex/utils/LogLevel;

    goto :goto_5c

    :cond_5b
    :goto_5b
    const/4 p1, 0x0

    :goto_5c
    return-object p1

    nop

    :sswitch_data_5e
    .sparse-switch
        0x1ad6f -> :sswitch_3e
        0x3164ae -> :sswitch_33
        0x5b09653 -> :sswitch_28
        0x5c4d208 -> :sswitch_1d
        0x4305af9c -> :sswitch_12
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
    .end packed-switch
.end method


# virtual methods
.method public setPerfMode(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    const-string v0, "true"

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    sput-boolean p1, Lcom/taobao/weex/WXEnvironment;->isPerf:Z

    .line 61
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sLogLevel:Lio/dcloud/feature/uniapp/utils/AbsLogLevel;

    invoke-interface {v0}, Lio/dcloud/feature/uniapp/utils/AbsLogLevel;->getValue()I

    move-result v0

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isPerf()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setLogLevel(IZ)V

    return-void
.end method

.method public switchLogLevel(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 7
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/module/ConsoleLogModule;->getLogLevel(Ljava/lang/String;)Lio/dcloud/feature/uniapp/utils/AbsLogLevel;

    move-result-object p1

    .line 42
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v1, "status"

    if-eqz p1, :cond_40

    .line 44
    sput-object p1, Lcom/taobao/weex/WXEnvironment;->sLogLevel:Lio/dcloud/feature/uniapp/utils/AbsLogLevel;

    .line 45
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    sget-object v2, Lcom/taobao/weex/WXEnvironment;->sLogLevel:Lio/dcloud/feature/uniapp/utils/AbsLogLevel;

    invoke-interface {v2}, Lio/dcloud/feature/uniapp/utils/AbsLogLevel;->getValue()I

    move-result v2

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isPerf()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setLogLevel(IZ)V

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchLogLevel--------"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isPerf()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "shutao"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "success"

    .line 47
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    :cond_40
    const-string p1, "failure"

    .line 49
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_45
    if-eqz p2, :cond_4a

    .line 53
    invoke-interface {p2, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_4a
    return-void
.end method
