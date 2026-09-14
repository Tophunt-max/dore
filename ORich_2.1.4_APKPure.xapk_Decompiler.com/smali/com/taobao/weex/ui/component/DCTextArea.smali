###### Class com.taobao.weex.ui.component.DCTextArea (com.taobao.weex.ui.component.DCTextArea)
.class public Lcom/taobao/weex/ui/component/DCTextArea;
.super Lcom/taobao/weex/ui/component/DCWXInput;
.source "DCTextArea.java"


# instance fields
.field private attr:Lcom/taobao/weex/dom/WXAttr;

.field private isAutoHeight:Z

.field private isLineChange:Z

.field isShowConfirm:Z

.field private mOnFocusChangeListener:Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 5

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/DCWXInput;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCTextArea;->isAutoHeight:Z

    .line 57
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCTextArea;->isLineChange:Z

    .line 66
    new-instance p1, Lcom/taobao/weex/ui/component/DCTextArea$2;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/DCTextArea$2;-><init>(Lcom/taobao/weex/ui/component/DCTextArea;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea;->mOnFocusChangeListener:Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;

    const/4 p1, 0x1

    .line 236
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCTextArea;->isShowConfirm:Z

    .line 31
    invoke-virtual {p4}, Lcom/taobao/weex/ui/action/BasicComponentData;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea;->attr:Lcom/taobao/weex/dom/WXAttr;

    .line 32
    new-instance p1, Lcom/taobao/weex/ui/component/DCTextArea$1;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/DCTextArea$1;-><init>(Lcom/taobao/weex/ui/component/DCTextArea;)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCTextArea;->setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/DCTextArea;)Lcom/taobao/weex/dom/WXAttr;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCTextArea;->attr:Lcom/taobao/weex/dom/WXAttr;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/DCTextArea;)Z
    .registers 1

    .line 24
    iget-boolean p0, p0, Lcom/taobao/weex/ui/component/DCTextArea;->isAutoHeight:Z

    return p0
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/DCTextArea;)Z
    .registers 1

    .line 24
    iget-boolean p0, p0, Lcom/taobao/weex/ui/component/DCTextArea;->isLineChange:Z

    return p0
.end method

.method private watchLine()V
    .registers 2

    .line 148
    new-instance v0, Lcom/taobao/weex/ui/component/DCTextArea$3;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/DCTextArea$3;-><init>(Lcom/taobao/weex/ui/component/DCTextArea;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCTextArea;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .registers 3

    .line 61
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->addEvent(Ljava/lang/String;)V

    const-string v0, "linechange"

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCTextArea;->isLineChange:Z

    :cond_e
    return-void
.end method

.method protected appleStyleAfterCreated(Lcom/taobao/weex/ui/view/WXEditText;)V
    .registers 3

    .line 189
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->appleStyleAfterCreated(Lcom/taobao/weex/ui/view/WXEditText;)V

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setSingleLine(Z)V

    const/4 v0, 0x1

    .line 191
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setMinLines(I)V

    const/16 v0, 0x64

    .line 192
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setMaxLines(I)V

    const v0, 0x20001

    .line 193
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setInputType(I)V

    return-void
.end method

.method public destroy()V
    .registers 2

    .line 245
    invoke-super {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->destroy()V

    .line 246
    invoke-static {}, Lcom/taobao/weex/ui/component/ConfirmBar;->getInstance()Lcom/taobao/weex/ui/component/ConfirmBar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/ui/component/ConfirmBar;->removeComponent(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method

.method protected getMeasureHeight()F
    .registers 2

    .line 231
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/DCTextArea;->isAutoHeight:Z

    if-eqz v0, :cond_9

    .line 232
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCTextArea;->getMeasuredLineHeight()F

    move-result v0

    return v0

    .line 233
    :cond_9
    invoke-super {p0}, Lcom/taobao/weex/ui/component/DCWXInput;->getMeasureHeight()F

    move-result v0

    return v0
.end method

.method protected getVerticalGravity()I
    .registers 2

    const/16 v0, 0x30

    return v0
.end method

.method protected bridge synthetic onHostViewInitialized(Landroid/view/View;)V
    .registers 2

    .line 24
    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCTextArea;->onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V

    return-void
.end method

.method protected onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V
    .registers 6

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/DCTextArea;->isNeedConfirm:Z

    .line 133
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setAllowDisableMovement(Z)V

    .line 134
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V

    .line 136
    :try_start_9
    invoke-static {}, Lcom/taobao/weex/ui/component/ConfirmBar;->getInstance()Lcom/taobao/weex/ui/component/ConfirmBar;

    move-result-object p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCTextArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCTextArea;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/taobao/weex/ui/component/ConfirmBar;->createConfirmBar(Landroid/content/Context;Lio/dcloud/common/DHInterface/IApp;)V

    .line 137
    invoke-static {}, Lcom/taobao/weex/ui/component/ConfirmBar;->getInstance()Lcom/taobao/weex/ui/component/ConfirmBar;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/taobao/weex/ui/component/ConfirmBar;->addComponent(Lcom/taobao/weex/ui/component/WXComponent;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2b} :catch_2c

    goto :goto_2d

    :catch_2c
    nop

    .line 140
    :goto_2d
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea;->attr:Lcom/taobao/weex/dom/WXAttr;

    const-string v1, "autoHeight"

    invoke-virtual {p1, v1}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_74

    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea;->attr:Lcom/taobao/weex/dom/WXAttr;

    invoke-virtual {p1, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_74

    .line 141
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCTextArea;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3fb33333    # 1.4f

    mul-float p1, p1, v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCTextArea;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    .line 142
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCTextArea;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCTextArea;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V

    .line 144
    :cond_74
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/DCTextArea;->watchLine()V

    return-void
.end method

.method public setAutoHeight(Z)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "autoHeight"
    .end annotation

    .line 221
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCTextArea;->isAutoHeight:Z

    return-void
.end method

.method protected setFocusAndBlur()V
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCTextArea;->mOnFocusChangeListener:Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCTextArea;->ismHasFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 126
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCTextArea;->mOnFocusChangeListener:Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCTextArea;->addFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)V

    :cond_d
    return-void
.end method

.method protected bridge synthetic setHostLayoutParams(Landroid/view/View;IIIIII)V
    .registers 8

    .line 24
    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual/range {p0 .. p7}, Lcom/taobao/weex/ui/component/DCTextArea;->setHostLayoutParams(Lcom/taobao/weex/ui/view/WXEditText;IIIIII)V

    return-void
.end method

.method protected setHostLayoutParams(Lcom/taobao/weex/ui/view/WXEditText;IIIIII)V
    .registers 8

    .line 198
    invoke-super/range {p0 .. p7}, Lcom/taobao/weex/ui/component/DCWXInput;->setHostLayoutParams(Lcom/taobao/weex/ui/view/WXEditText;IIIIII)V

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x1

    .line 208
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/DCTextArea;->isConfirmHold:Z

    .line 209
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/DCWXInput;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setShowConfirmBar(Z)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "showConfirmBar"
    .end annotation

    .line 240
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCTextArea;->isShowConfirm:Z

    return-void
.end method

.method public setSingleLine(Z)V
    .registers 3

    .line 226
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCTextArea;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setSingleLine(Z)V

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 3

    .line 214
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCTextArea;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 215
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCTextArea;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    const v0, 0x20001

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setInputType(I)V

    :cond_12
    return-void
.end method

###### Class com.taobao.weex.ui.component.DCTextArea.AnonymousClass1 (com.taobao.weex.ui.component.DCTextArea$1)
.class Lcom/taobao/weex/ui/component/DCTextArea$1;
.super Lcom/taobao/weex/layout/ContentBoxMeasurement;
.source "DCTextArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCTextArea;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCTextArea;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCTextArea;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$1;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-direct {p0}, Lcom/taobao/weex/layout/ContentBoxMeasurement;-><init>()V

    return-void
.end method


# virtual methods
.method public layoutAfter(FF)V
    .registers 3

    return-void
.end method

.method public layoutBefore()V
    .registers 1

    return-void
.end method

.method public measureInternal(FFII)V
    .registers 5

    .line 35
    invoke-static {p1}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result p1

    if-eqz p1, :cond_18

    const/high16 p1, 0x43960000    # 300.0f

    .line 36
    iget-object p3, p0, Lcom/taobao/weex/ui/component/DCTextArea$1;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/DCTextArea;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p3

    invoke-static {p1, p3}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$1;->mMeasureWidth:F

    .line 37
    :cond_18
    invoke-static {p2}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result p1

    if-eqz p1, :cond_78

    .line 38
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$1;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/DCTextArea;->access$000(Lcom/taobao/weex/ui/component/DCTextArea;)Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    const-string p2, "autoHeight"

    invoke-virtual {p1, p2}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_66

    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$1;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/DCTextArea;->access$000(Lcom/taobao/weex/ui/component/DCTextArea;)Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_66

    .line 39
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$1;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/DCTextArea;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3fb33333    # 1.4f

    mul-float p1, p1, p2

    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCTextArea$1;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/DCTextArea;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p2

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$1;->mMeasureHeight:F

    goto :goto_78

    :cond_66
    const/high16 p1, 0x43160000    # 150.0f

    .line 41
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCTextArea$1;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/DCTextArea;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p2

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$1;->mMeasureHeight:F

    :cond_78
    :goto_78
    return-void
.end method

###### Class com.taobao.weex.ui.component.DCTextArea.AnonymousClass2 (com.taobao.weex.ui.component.DCTextArea$2)
.class Lcom/taobao/weex/ui/component/DCTextArea$2;
.super Ljava/lang/Object;
.source "DCTextArea.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/DCTextArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCTextArea;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCTextArea;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$2;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 93
    iput p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$2;->count:I

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/DCTextArea$2;Landroid/widget/TextView;)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/DCTextArea$2;->fireEventForFocus(Landroid/widget/TextView;)V

    return-void
.end method

.method private fireEventForFocus(Landroid/widget/TextView;)V
    .registers 6

    .line 95
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCTextArea$2;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCTextArea;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    new-instance v1, Lcom/taobao/weex/ui/component/DCTextArea$2$1;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/ui/component/DCTextArea$2$1;-><init>(Lcom/taobao/weex/ui/component/DCTextArea$2;Landroid/widget/TextView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/ui/view/WXEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onFocusChange(Z)V
    .registers 8

    .line 69
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCTextArea$2;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCTextArea;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_b

    return-void

    .line 73
    :cond_b
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 74
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 75
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "value"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "detail"

    if-eqz p1, :cond_57

    .line 78
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$2;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    iget p1, p1, Lcom/taobao/weex/ui/component/DCTextArea;->keyboardHeight:F

    const/4 v5, 0x0

    cmpl-float p1, p1, v5

    if-nez p1, :cond_34

    .line 79
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/DCTextArea$2;->fireEventForFocus(Landroid/widget/TextView;)V

    goto :goto_6e

    .line 81
    :cond_34
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$2;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    iget p1, p1, Lcom/taobao/weex/ui/component/DCTextArea;->keyboardHeight:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v5, "height"

    invoke-interface {v3, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$2;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    const-string v0, "focus"

    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/ui/component/DCTextArea;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_6e

    .line 87
    :cond_57
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "cursor"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$2;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    const-string v0, "blur"

    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/ui/component/DCTextArea;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :goto_6e
    return-void
.end method

###### Class com.taobao.weex.ui.component.DCTextArea.AnonymousClass2.AnonymousClass1 (com.taobao.weex.ui.component.DCTextArea$2$1)
.class Lcom/taobao/weex/ui/component/DCTextArea$2$1;
.super Ljava/lang/Object;
.source "DCTextArea.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCTextArea$2;->fireEventForFocus(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/weex/ui/component/DCTextArea$2;

.field final synthetic val$text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCTextArea$2;Landroid/widget/TextView;)V
    .registers 3

    .line 95
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->this$1:Lcom/taobao/weex/ui/component/DCTextArea$2;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->val$text:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 98
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->this$1:Lcom/taobao/weex/ui/component/DCTextArea$2;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/DCTextArea$2;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    iget v0, v0, Lcom/taobao/weex/ui/component/DCTextArea;->keyboardHeight:F

    const-string v1, "focus"

    const-string v2, "detail"

    const-string v3, "height"

    const-string v4, "value"

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmpl-float v0, v0, v6

    if-nez v0, :cond_59

    .line 99
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->this$1:Lcom/taobao/weex/ui/component/DCTextArea$2;

    iget v6, v0, Lcom/taobao/weex/ui/component/DCTextArea$2;->count:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/taobao/weex/ui/component/DCTextArea$2;->count:I

    .line 100
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->this$1:Lcom/taobao/weex/ui/component/DCTextArea$2;

    iget v0, v0, Lcom/taobao/weex/ui/component/DCTextArea$2;->count:I

    const/4 v6, 0x3

    if-le v0, v6, :cond_51

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 102
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 103
    iget-object v5, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->val$text:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v4, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->this$1:Lcom/taobao/weex/ui/component/DCTextArea$2;

    iget-object v4, v4, Lcom/taobao/weex/ui/component/DCTextArea$2;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    iget v4, v4, Lcom/taobao/weex/ui/component/DCTextArea;->keyboardHeight:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v2, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->this$1:Lcom/taobao/weex/ui/component/DCTextArea$2;

    iget-object v2, v2, Lcom/taobao/weex/ui/component/DCTextArea$2;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {v2, v1, v0}, Lcom/taobao/weex/ui/component/DCTextArea;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 109
    :cond_51
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->this$1:Lcom/taobao/weex/ui/component/DCTextArea$2;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->val$text:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/DCTextArea$2;->access$100(Lcom/taobao/weex/ui/component/DCTextArea$2;Landroid/widget/TextView;)V

    goto :goto_8c

    .line 111
    :cond_59
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->this$1:Lcom/taobao/weex/ui/component/DCTextArea$2;

    const/4 v6, 0x0

    iput v6, v0, Lcom/taobao/weex/ui/component/DCTextArea$2;->count:I

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 113
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 114
    iget-object v5, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->val$text:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v4, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->this$1:Lcom/taobao/weex/ui/component/DCTextArea$2;

    iget-object v4, v4, Lcom/taobao/weex/ui/component/DCTextArea$2;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    iget v4, v4, Lcom/taobao/weex/ui/component/DCTextArea;->keyboardHeight:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v2, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->this$1:Lcom/taobao/weex/ui/component/DCTextArea$2;

    iget-object v2, v2, Lcom/taobao/weex/ui/component/DCTextArea$2;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {v2, v1, v0}, Lcom/taobao/weex/ui/component/DCTextArea;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :goto_8c
    return-void
.end method

###### Class com.taobao.weex.ui.component.DCTextArea.AnonymousClass3 (com.taobao.weex.ui.component.DCTextArea$3)
.class Lcom/taobao/weex/ui/component/DCTextArea$3;
.super Ljava/lang/Object;
.source "DCTextArea.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCTextArea;->watchLine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field line:I

.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCTextArea;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCTextArea;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 149
    iput p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->line:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    .line 157
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/DCTextArea;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXEditText;->getLineCount()I

    move-result p1

    iget p2, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->line:I

    if-eq p1, p2, :cond_122

    .line 158
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/DCTextArea;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXEditText;->getLineCount()I

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->line:I

    .line 159
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/DCTextArea;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXEditText;->getExtendedPaddingTop()I

    move-result p1

    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/DCTextArea;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/WXEditText;->getExtendedPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    .line 161
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/DCTextArea;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/WXEditText;->getLayout()Landroid/text/Layout;

    move-result-object p2

    iget-object p3, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/DCTextArea;->getHostView()Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p3}, Lcom/taobao/weex/ui/view/WXEditText;->getLineCount()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/text/Layout;->getLineTop(I)I

    move-result p2

    add-int/2addr p2, p1

    int-to-float p2, p2

    const/4 p3, 0x1

    if-nez p1, :cond_9d

    .line 162
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/DCTextArea;->access$200(Lcom/taobao/weex/ui/component/DCTextArea;)Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 163
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/DCTextArea;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXEditText;->getLayout()Landroid/text/Layout;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/DCTextArea;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/WXEditText;->getLineCount()I

    move-result p2

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/DCTextArea;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result p2

    int-to-float p2, p2

    const p4, 0x3fb33333    # 1.4f

    mul-float p2, p2, p4

    iget-object p4, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p4}, Lcom/taobao/weex/ui/component/DCTextArea;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p4

    invoke-virtual {p4}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p4

    invoke-static {p2, p4}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p2

    add-float/2addr p2, p1

    .line 165
    :cond_9d
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/DCTextArea;->access$200(Lcom/taobao/weex/ui/component/DCTextArea;)Z

    move-result p1

    if-eqz p1, :cond_d7

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_d7

    .line 166
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    iget-object p4, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p4}, Lcom/taobao/weex/ui/component/DCTextArea;->getInstanceId()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCTextArea;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, v0, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V

    .line 167
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    iget-object p4, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p4}, Lcom/taobao/weex/ui/component/DCTextArea;->getInstanceId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->notifyLayout(Ljava/lang/String;)Z

    .line 168
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    iget-object p4, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p4}, Lcom/taobao/weex/ui/component/DCTextArea;->getInstanceId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->forceLayout(Ljava/lang/String;)V

    .line 170
    :cond_d7
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/DCTextArea;->access$300(Lcom/taobao/weex/ui/component/DCTextArea;)Z

    move-result p1

    if-nez p1, :cond_e0

    return-void

    .line 171
    :cond_e0
    new-instance p1, Ljava/util/HashMap;

    const/4 p4, 0x3

    invoke-direct {p1, p4}, Ljava/util/HashMap;-><init>(I)V

    .line 172
    iget p4, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->line:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "lineCount"

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object p4, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {p4}, Lcom/taobao/weex/ui/component/DCTextArea;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p4

    invoke-virtual {p4}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p4

    invoke-static {p2, p4}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result p4

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    const-string v0, "height"

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string p4, "heightRpx"

    invoke-interface {p1, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    const-string p3, "detail"

    .line 176
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$3;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    const-string p3, "linechange"

    invoke-virtual {p1, p3, p2}, Lcom/taobao/weex/ui/component/DCTextArea;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_122
    return-void
.end method
