###### Class io.dcloud.feature.weex_switch.DCWXSwitch (io.dcloud.feature.weex_switch.DCWXSwitch)
.class public Lio/dcloud/feature/weex_switch/DCWXSwitch;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "DCWXSwitch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXComponent<",
        "Lio/dcloud/feature/weex_switch/SwitchButton;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 4

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 24
    new-instance p1, Lio/dcloud/feature/weex_switch/DCWXSwitch$1;

    invoke-direct {p1, p0}, Lio/dcloud/feature/weex_switch/DCWXSwitch$1;-><init>(Lio/dcloud/feature/weex_switch/DCWXSwitch;)V

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex_switch/DCWXSwitch;->setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V

    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .registers 3

    .line 76
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    if-eqz p1, :cond_21

    const-string v0, "change"

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/DCWXSwitch;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 78
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/DCWXSwitch;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex_switch/SwitchButton;

    new-instance v0, Lio/dcloud/feature/weex_switch/DCWXSwitch$2;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex_switch/DCWXSwitch$2;-><init>(Lio/dcloud/feature/weex_switch/DCWXSwitch;)V

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->setOnCheckedChangeListener(Lio/dcloud/feature/weex_switch/SwitchButton$OnCheckedChangeListener;)V

    :cond_21
    return-void
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex_switch/DCWXSwitch;->initComponentHostView(Landroid/content/Context;)Lio/dcloud/feature/weex_switch/SwitchButton;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lio/dcloud/feature/weex_switch/SwitchButton;
    .registers 3

    .line 53
    new-instance v0, Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-direct {v0, p1}, Lio/dcloud/feature/weex_switch/SwitchButton;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 54
    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->setShadowEffect(Z)V

    .line 55
    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->setEnableEffect(Z)V

    return-object v0
.end method

.method protected removeEventFromView(Ljava/lang/String;)V
    .registers 3

    .line 93
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->removeEventFromView(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/DCWXSwitch;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1b

    const-string v0, "change"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 95
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/DCWXSwitch;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex_switch/SwitchButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->setOnCheckedChangeListener(Lio/dcloud/feature/weex_switch/SwitchButton$OnCheckedChangeListener;)V

    :cond_1b
    return-void
.end method

.method public setChecked(Z)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "checked"
    .end annotation

    .line 61
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/DCWXSwitch;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->setChecked(Z)V

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "color"
    .end annotation

    .line 71
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/DCWXSwitch;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->setCheckedColor(I)V

    return-void
.end method

.method public setDisabled(Z)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "disabled"
    .end annotation

    .line 66
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/DCWXSwitch;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_switch/SwitchButton;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->setEnabled(Z)V

    return-void
.end method

###### Class io.dcloud.feature.weex_switch.DCWXSwitch.AnonymousClass1 (io.dcloud.feature.weex_switch.DCWXSwitch$1)
.class Lio/dcloud/feature/weex_switch/DCWXSwitch$1;
.super Lcom/taobao/weex/layout/ContentBoxMeasurement;
.source "DCWXSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex_switch/DCWXSwitch;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex_switch/DCWXSwitch;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex_switch/DCWXSwitch;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lio/dcloud/feature/weex_switch/DCWXSwitch$1;->this$0:Lio/dcloud/feature/weex_switch/DCWXSwitch;

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
    iget-object p3, p0, Lio/dcloud/feature/weex_switch/DCWXSwitch$1;->this$0:Lio/dcloud/feature/weex_switch/DCWXSwitch;

    invoke-virtual {p3}, Lio/dcloud/feature/weex_switch/DCWXSwitch;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p3

    const/high16 p4, 0x41f80000    # 31.0f

    invoke-static {p4, p3}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p3

    float-to-int p3, p3

    .line 32
    iget-object p4, p0, Lio/dcloud/feature/weex_switch/DCWXSwitch$1;->this$0:Lio/dcloud/feature/weex_switch/DCWXSwitch;

    invoke-virtual {p4}, Lio/dcloud/feature/weex_switch/DCWXSwitch;->getInstance()Lcom/taobao/weex/WXSDKInstance;

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
    iput p1, p0, Lio/dcloud/feature/weex_switch/DCWXSwitch$1;->mMeasureWidth:F

    .line 38
    iput p2, p0, Lio/dcloud/feature/weex_switch/DCWXSwitch$1;->mMeasureHeight:F

    return-void
.end method

###### Class io.dcloud.feature.weex_switch.DCWXSwitch.AnonymousClass2 (io.dcloud.feature.weex_switch.DCWXSwitch$2)
.class Lio/dcloud/feature/weex_switch/DCWXSwitch$2;
.super Ljava/lang/Object;
.source "DCWXSwitch.java"

# interfaces
.implements Lio/dcloud/feature/weex_switch/SwitchButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex_switch/DCWXSwitch;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex_switch/DCWXSwitch;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex_switch/DCWXSwitch;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lio/dcloud/feature/weex_switch/DCWXSwitch$2;->this$0:Lio/dcloud/feature/weex_switch/DCWXSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lio/dcloud/feature/weex_switch/SwitchButton;Z)V
    .registers 5

    .line 81
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "value"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "detail"

    .line 84
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object p2, p0, Lio/dcloud/feature/weex_switch/DCWXSwitch$2;->this$0:Lio/dcloud/feature/weex_switch/DCWXSwitch;

    const-string v0, "change"

    invoke-virtual {p2, v0, p1}, Lio/dcloud/feature/weex_switch/DCWXSwitch;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
