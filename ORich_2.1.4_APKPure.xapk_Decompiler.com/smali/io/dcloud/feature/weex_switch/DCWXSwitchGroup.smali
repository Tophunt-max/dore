###### Class io.dcloud.feature.weex_switch.DCWXSwitchGroup (io.dcloud.feature.weex_switch.DCWXSwitchGroup)
.class public Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "DCWXSwitchGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXComponent<",
        "Lio/dcloud/feature/weex_switch/SwitchGroup;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 4

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 24
    new-instance p1, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup$1;

    invoke-direct {p1, p0}, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup$1;-><init>(Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;)V

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;->setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V

    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .registers 3

    .line 74
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    if-eqz p1, :cond_28

    const-string v0, "change"

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 76
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex_switch/SwitchGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex_switch/SwitchGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex_switch/SwitchButton;

    new-instance v0, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup$2;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup$2;-><init>(Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;)V

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->setOnCheckedChangeListener(Lio/dcloud/feature/weex_switch/SwitchButton$OnCheckedChangeListener;)V

    :cond_28
    return-void
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;->initComponentHostView(Landroid/content/Context;)Lio/dcloud/feature/weex_switch/SwitchGroup;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lio/dcloud/feature/weex_switch/SwitchGroup;
    .registers 3

    .line 53
    new-instance v0, Lio/dcloud/feature/weex_switch/SwitchGroup;

    invoke-direct {v0, p1}, Lio/dcloud/feature/weex_switch/SwitchGroup;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected removeEventFromView(Ljava/lang/String;)V
    .registers 3

    .line 91
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->removeEventFromView(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string v0, "change"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 93
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex_switch/SwitchGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex_switch/SwitchGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex_switch/SwitchButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->setOnCheckedChangeListener(Lio/dcloud/feature/weex_switch/SwitchButton$OnCheckedChangeListener;)V

    :cond_22
    return-void
.end method

.method public setChecked(Z)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "checked"
    .end annotation

    .line 59
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_switch/SwitchGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex_switch/SwitchGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->setChecked(Z)V

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "color"
    .end annotation

    .line 69
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_switch/SwitchGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex_switch/SwitchGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->setCheckedColor(I)V

    return-void
.end method

.method public setDisabled(Z)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "disabled"
    .end annotation

    .line 64
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_switch/SwitchGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex_switch/SwitchGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_switch/SwitchButton;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->setEnabled(Z)V

    return-void
.end method

###### Class io.dcloud.feature.weex_switch.DCWXSwitchGroup.AnonymousClass1 (io.dcloud.feature.weex_switch.DCWXSwitchGroup$1)
.class Lio/dcloud/feature/weex_switch/DCWXSwitchGroup$1;
.super Lcom/taobao/weex/layout/ContentBoxMeasurement;
.source "DCWXSwitchGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup$1;->this$0:Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;

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
    .registers 6

    .line 31
    iget-object p3, p0, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup$1;->this$0:Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;

    invoke-virtual {p3}, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p3

    const/high16 p4, 0x41f80000    # 31.0f

    invoke-static {p4, p3}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p3

    float-to-int p3, p3

    .line 32
    iget-object p4, p0, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup$1;->this$0:Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;

    invoke-virtual {p4}, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p4

    invoke-virtual {p4}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p4

    const/high16 v0, 0x424c0000    # 51.0f

    invoke-static {v0, p4}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p4

    float-to-int p4, p4

    .line 33
    invoke-static {p2}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result v0

    if-eqz v0, :cond_2a

    int-to-float p1, p4

    int-to-float p2, p3

    .line 37
    :cond_2a
    iput p1, p0, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup$1;->mMeasureWidth:F

    .line 38
    iput p2, p0, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup$1;->mMeasureHeight:F

    return-void
.end method

###### Class io.dcloud.feature.weex_switch.DCWXSwitchGroup.AnonymousClass2 (io.dcloud.feature.weex_switch.DCWXSwitchGroup$2)
.class Lio/dcloud/feature/weex_switch/DCWXSwitchGroup$2;
.super Ljava/lang/Object;
.source "DCWXSwitchGroup.java"

# interfaces
.implements Lio/dcloud/feature/weex_switch/SwitchButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup$2;->this$0:Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lio/dcloud/feature/weex_switch/SwitchButton;Z)V
    .registers 5

    .line 79
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "value"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "detail"

    .line 82
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object p2, p0, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup$2;->this$0:Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;

    const-string v0, "change"

    invoke-virtual {p2, v0, p1}, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
