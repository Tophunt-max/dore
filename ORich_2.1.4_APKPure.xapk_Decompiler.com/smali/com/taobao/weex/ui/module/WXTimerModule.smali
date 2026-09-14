###### Class com.taobao.weex.ui.module.WXTimerModule (com.taobao.weex.ui.module.WXTimerModule)
.class public Lcom/taobao/weex/ui/module/WXTimerModule;
.super Lcom/taobao/weex/common/WXModule;
.source "WXTimerModule.java"

# interfaces
.implements Lcom/taobao/weex/common/Destroyable;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "timer"


# instance fields
.field private antiIntAutoBoxing:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 64
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->getJSLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->handler:Landroid/os/Handler;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->antiIntAutoBoxing:Landroid/util/SparseArray;

    return-void
.end method

.method private checkIfTimerInBack(I)V
    .registers 5

    .line 156
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    if-nez p1, :cond_f

    return-void

    .line 160
    :cond_f
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->isViewDisAppear()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 161
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string v2, "wxTimerInBackCount"

    invoke-virtual {p1, v2, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

    :cond_20
    return-void
.end method

.method private createTimerArgs(IIZ)[Lcom/taobao/weex/bridge/WXJSObject;
    .registers 8

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance p2, Lcom/taobao/weex/bridge/WXHashMap;

    invoke-direct {p2}, Lcom/taobao/weex/bridge/WXHashMap;-><init>()V

    const-string p3, "method"

    const-string v1, "callback"

    .line 176
    invoke-virtual {p2, p3, v1}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "args"

    .line 177
    invoke-virtual {p2, p3, v0}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x1

    new-array v0, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x2

    new-array v2, p2, [Lcom/taobao/weex/bridge/WXJSObject;

    .line 179
    new-instance v3, Lcom/taobao/weex/bridge/WXJSObject;

    .line 180
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p2, p1}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    aput-object v3, v2, v1

    new-instance p1, Lcom/taobao/weex/bridge/WXJSObject;

    .line 182
    invoke-static {v0}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    invoke-direct {p1, v0, p2}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    aput-object p1, v2, p3

    return-object v2
.end method

.method private postMessage(IIII)V
    .registers 7

    if-ltz p3, :cond_29

    if-gtz p2, :cond_5

    goto :goto_29

    .line 207
    :cond_5
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->antiIntAutoBoxing:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    .line 208
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->antiIntAutoBoxing:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 210
    :cond_16
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->antiIntAutoBoxing:Landroid/util/SparseArray;

    .line 211
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p4, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 212
    iget-object p2, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->handler:Landroid/os/Handler;

    int-to-long p3, p3

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_30

    :cond_29
    :goto_29
    const-string p1, "timer"

    const-string p2, "interval < 0 or funcId <=0"

    .line 205
    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_30
    return-void
.end method

.method private postOrHoldMessage(IIII)V
    .registers 6

    .line 186
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isPreRenderMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 187
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/module/WXTimerModule;->postMessage(IIII)V

    goto :goto_f

    .line 189
    :cond_c
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/module/WXTimerModule;->postMessage(IIII)V

    :goto_f
    return-void
.end method

.method private removeOrHoldMessage(II)V
    .registers 6

    .line 194
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isPreRenderMode()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 195
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->antiIntAutoBoxing:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_27

    .line 197
    :cond_18
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->antiIntAutoBoxing:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :goto_27
    return-void
.end method


# virtual methods
.method public clearInterval(I)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    if-gtz p1, :cond_3

    return-void

    :cond_3
    const/16 v0, 0xc

    .line 105
    invoke-direct {p0, v0, p1}, Lcom/taobao/weex/ui/module/WXTimerModule;->removeOrHoldMessage(II)V

    return-void
.end method

.method public clearTimeout(I)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    if-gtz p1, :cond_3

    return-void

    :cond_3
    const/16 v0, 0xb

    .line 97
    invoke-direct {p0, v0, p1}, Lcom/taobao/weex/ui/module/WXTimerModule;->removeOrHoldMessage(II)V

    return-void
.end method

.method public destroy()V
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1c

    .line 111
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "timer"

    const-string v1, "Timer Module removeAllMessages: "

    .line 112
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_11
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->antiIntAutoBoxing:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_1c
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_90

    .line 124
    iget v2, p1, Landroid/os/Message;->what:I

    .line 125
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timer Module handleMessage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "timer"

    invoke-static {v4, v3}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    const/16 v3, 0xb

    if-eq v2, v3, :cond_66

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2d

    goto :goto_90

    .line 139
    :cond_2d
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_32

    goto :goto_90

    .line 142
    :cond_32
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/module/WXTimerModule;->checkIfTimerInBack(I)V

    .line 143
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v3, v0, v2, v4}, Lcom/taobao/weex/ui/module/WXTimerModule;->postMessage(IIII)V

    .line 144
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2, v1}, Lcom/taobao/weex/ui/module/WXTimerModule;->createTimerArgs(IIZ)[Lcom/taobao/weex/bridge/WXJSObject;

    move-result-object v7

    .line 145
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v3

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x1

    const-string v6, "callJS"

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V

    goto :goto_8f

    .line 130
    :cond_66
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_6b

    goto :goto_90

    .line 133
    :cond_6b
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2}, Lcom/taobao/weex/ui/module/WXTimerModule;->checkIfTimerInBack(I)V

    .line 134
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3, v0}, Lcom/taobao/weex/ui/module/WXTimerModule;->createTimerArgs(IIZ)[Lcom/taobao/weex/bridge/WXJSObject;

    move-result-object v8

    .line 135
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v4

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v9, 0x1

    const-string v7, "callJS"

    invoke-virtual/range {v4 .. v9}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V

    :goto_8f
    const/4 v0, 0x1

    :cond_90
    :goto_90
    return v0
.end method

.method setHandler(Landroid/os/Handler;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->handler:Landroid/os/Handler;

    return-void
.end method

.method public setInterval(IF)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_35

    const/16 v0, 0xc

    float-to-int p2, p2

    .line 84
    iget-object v1, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/taobao/weex/ui/module/WXTimerModule;->postOrHoldMessage(IIII)V

    .line 85
    iget-object p1, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 86
    iget-object p1, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object p1

    iget p2, p1, Lcom/taobao/weex/common/WXPerformance;->timerInvokeCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/taobao/weex/common/WXPerformance;->timerInvokeCount:I

    .line 88
    :cond_28
    iget-object p1, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string p2, "wxFSTimerCount"

    invoke-virtual {p1, p2, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->updateFSDiffStats(Ljava/lang/String;D)V

    :cond_35
    return-void
.end method

.method public setTimeout(IF)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_35

    const/16 v0, 0xb

    float-to-int p2, p2

    .line 73
    iget-object v1, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/taobao/weex/ui/module/WXTimerModule;->postOrHoldMessage(IIII)V

    .line 74
    iget-object p1, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 75
    iget-object p1, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object p1

    iget p2, p1, Lcom/taobao/weex/common/WXPerformance;->timerInvokeCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/taobao/weex/common/WXPerformance;->timerInvokeCount:I

    .line 77
    :cond_28
    iget-object p1, p0, Lcom/taobao/weex/ui/module/WXTimerModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string p2, "wxFSTimerCount"

    invoke-virtual {p1, p2, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->updateFSDiffStats(Ljava/lang/String;D)V

    :cond_35
    return-void
.end method
