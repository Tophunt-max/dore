###### Class io.dcloud.feature.weex_barcode.BarcodeComponent (io.dcloud.feature.weex_barcode.BarcodeComponent)
.class public Lio/dcloud/feature/weex_barcode/BarcodeComponent;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "BarcodeComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXComponent<",
        "Lio/dcloud/feature/weex_barcode/BarcodeView;",
        ">;"
    }
.end annotation


# instance fields
.field private isAnimationEnd:Z

.field private isLoad:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ILcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 5

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ILcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 23
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->isLoad:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    iput-boolean p2, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->isAnimationEnd:Z

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 4

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 23
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->isLoad:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    iput-boolean p2, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->isAnimationEnd:Z

    return-void
.end method

.method static synthetic access$002(Lio/dcloud/feature/weex_barcode/BarcodeComponent;Z)Z
    .registers 2

    .line 21
    iput-boolean p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->isAnimationEnd:Z

    return p1
.end method


# virtual methods
.method public cancel()V
    .registers 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 125
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-virtual {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->cancelScan()V

    return-void
.end method

.method public close()V
    .registers 1
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    return-void
.end method

.method public destroy()V
    .registers 2

    .line 144
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    .line 145
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-virtual {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->closeScan()V

    .line 146
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-virtual {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->onDestory()V

    return-void
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 21
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->initComponentHostView(Landroid/content/Context;)Lio/dcloud/feature/weex_barcode/BarcodeView;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lio/dcloud/feature/weex_barcode/BarcodeView;
    .registers 4

    .line 34
    new-instance v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lio/dcloud/feature/weex_barcode/BarcodeView;-><init>(Landroid/content/Context;Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/WXSDKInstance;)V

    return-object v0
.end method

.method public onActivityPause()V
    .registers 2

    .line 157
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityPause()V

    .line 158
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-virtual {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->onPause()V

    return-void
.end method

.method public onActivityResume()V
    .registers 3

    .line 151
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityResume()V

    .line 152
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->onResume(Z)V

    return-void
.end method

.method public setAutoDecodeCharset(Z)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "autoDecodeCharset"
    .end annotation

    .line 61
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setAutoDecodeCharset(Z)V

    return-void
.end method

.method public setBackground(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "background"
    .end annotation

    .line 67
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setBackground(I)V

    return-void
.end method

.method public setFilters(Lcom/alibaba/fastjson/JSONArray;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "filters"
    .end annotation

    .line 77
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->initDecodeFormats(Lcom/alibaba/fastjson/JSONArray;)V

    return-void
.end method

.method public setFlash(Z)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 135
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 136
    :cond_b
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setFlash(Z)V

    return-void
.end method

.method public setFrameColor(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "frameColor"
    .end annotation

    .line 52
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setFrameColor(I)V

    return-void
.end method

.method protected bridge synthetic setHostLayoutParams(Landroid/view/View;IIIIII)V
    .registers 8

    .line 21
    check-cast p1, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-virtual/range {p0 .. p7}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->setHostLayoutParams(Lio/dcloud/feature/weex_barcode/BarcodeView;IIIIII)V

    return-void
.end method

.method protected setHostLayoutParams(Lio/dcloud/feature/weex_barcode/BarcodeView;IIIIII)V
    .registers 8

    .line 113
    invoke-super/range {p0 .. p7}, Lcom/taobao/weex/ui/component/WXComponent;->setHostLayoutParams(Landroid/view/View;IIIIII)V

    .line 114
    iget-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->isLoad:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 115
    iget-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->isLoad:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 116
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-virtual {p1, p2, p3}, Lio/dcloud/feature/weex_barcode/BarcodeView;->initBarcodeView(II)V

    goto :goto_24

    .line 119
    :cond_1b
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-virtual {p1, p2, p3}, Lio/dcloud/feature/weex_barcode/BarcodeView;->updateStyles(II)V

    :goto_24
    return-void
.end method

.method public setScanbarColor(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scanbarColor"
    .end annotation

    .line 72
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setScanBarColor(I)V

    return-void
.end method

.method public setSutoStart(Z)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "autostart"
    .end annotation

    .line 83
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->isAnimationEnd:Z

    if-nez v0, :cond_11

    .line 84
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    new-instance v1, Lio/dcloud/feature/weex_barcode/BarcodeComponent$1;

    invoke-direct {v1, p0, p1}, Lio/dcloud/feature/weex_barcode/BarcodeComponent$1;-><init>(Lio/dcloud/feature/weex_barcode/BarcodeComponent;Z)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKInstance;->addFrameViewEventListener(Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;)V

    goto :goto_17

    :cond_11
    if-eqz p1, :cond_17

    const/4 p1, 0x0

    .line 95
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->start(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public start(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 7
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    if-eqz p1, :cond_6d

    .line 103
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    const-string v1, "conserve"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1a

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setConserve(Z)V

    .line 104
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    const-string v1, "filename"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "png"

    invoke-static {v1, v2}, Lio/dcloud/common/util/PdrUtil;->getDefaultPrivateDocPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setFilename(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    const-string v1, "vibrate"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_4b

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_4c

    :cond_4b
    const/4 v1, 0x1

    :goto_4c
    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setVibrate(Z)V

    .line 106
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    const-string v1, "sound"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "default"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    :cond_69
    const/4 v3, 0x1

    :cond_6a
    invoke-virtual {v0, v3}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setPlayBeep(Z)V

    .line 108
    :cond_6d
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-virtual {p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->start()V

    return-void
.end method

.method public updateProperties(Ljava/util/Map;)V
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

    .line 39
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    .line 40
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    const-string v0, "background"

    invoke-virtual {p1, v0}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 41
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex_barcode/BarcodeView;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setBackgroundColor(I)V

    :cond_1a
    return-void
.end method

###### Class io.dcloud.feature.weex_barcode.BarcodeComponent.AnonymousClass1 (io.dcloud.feature.weex_barcode.BarcodeComponent$1)
.class Lio/dcloud/feature/weex_barcode/BarcodeComponent$1;
.super Ljava/lang/Object;
.source "BarcodeComponent.java"

# interfaces
.implements Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex_barcode/BarcodeComponent;->setSutoStart(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex_barcode/BarcodeComponent;

.field final synthetic val$isstart:Z


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex_barcode/BarcodeComponent;Z)V
    .registers 3

    .line 84
    iput-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeComponent;

    iput-boolean p2, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent$1;->val$isstart:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowAnimationEnd()V
    .registers 3

    .line 87
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeComponent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->access$002(Lio/dcloud/feature/weex_barcode/BarcodeComponent;Z)Z

    .line 88
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent$1;->val$isstart:Z

    if-eqz v0, :cond_10

    .line 89
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeComponent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->start(Lcom/alibaba/fastjson/JSONObject;)V

    .line 90
    :cond_10
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeComponent;

    invoke-virtual {v0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/WXSDKInstance;->removeFrameViewEventListener(Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;)V

    return-void
.end method
