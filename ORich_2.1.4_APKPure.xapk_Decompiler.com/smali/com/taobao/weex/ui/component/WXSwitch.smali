###### Class com.taobao.weex.ui.component.WXSwitch (com.taobao.weex.ui.component.WXSwitch)
.class public Lcom/taobao/weex/ui/component/WXSwitch;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "WXSwitch.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXComponent<",
        "Lcom/taobao/weex/ui/view/WXSwitchView;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/taobao/weex/ui/component/WXSwitch;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 5

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 51
    new-instance p2, Lcom/taobao/weex/ui/component/WXSwitch$1;

    invoke-direct {p2, p0, p1}, Lcom/taobao/weex/ui/component/WXSwitch$1;-><init>(Lcom/taobao/weex/ui/component/WXSwitch;Lcom/taobao/weex/WXSDKInstance;)V

    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/component/WXSwitch;->setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V

    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .registers 3

    .line 95
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    if-eqz p1, :cond_29

    const-string v0, "change"

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSwitch;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 97
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSwitch;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez p1, :cond_1e

    .line 98
    new-instance p1, Lcom/taobao/weex/ui/component/WXSwitch$2;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/WXSwitch$2;-><init>(Lcom/taobao/weex/ui/component/WXSwitch;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSwitch;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 112
    :cond_1e
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSwitch;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXSwitchView;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSwitch;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXSwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_29
    return-void
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 38
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXSwitch;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXSwitchView;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXSwitchView;
    .registers 3

    .line 89
    new-instance v0, Lcom/taobao/weex/ui/view/WXSwitchView;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXSwitchView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected removeEventFromView(Ljava/lang/String;)V
    .registers 3

    .line 118
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->removeEventFromView(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSwitch;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1b

    const-string v0, "change"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 120
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSwitch;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXSwitchView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXSwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1b
    return-void
.end method

.method public setChecked(Z)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "checked"
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSwitch;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXSwitchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXSwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 140
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSwitch;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXSwitchView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXSwitchView;->setChecked(Z)V

    .line 141
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSwitch;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXSwitchView;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSwitch;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXSwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 4

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "checked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 134
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_10
    const/4 p1, 0x0

    .line 128
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 130
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXSwitch;->setChecked(Z)V

    :cond_1e
    const/4 p1, 0x1

    return p1
.end method

###### Class com.taobao.weex.ui.component.WXSwitch.AnonymousClass1 (com.taobao.weex.ui.component.WXSwitch$1)
.class Lcom/taobao/weex/ui/component/WXSwitch$1;
.super Lcom/taobao/weex/layout/ContentBoxMeasurement;
.source "WXSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXSwitch;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXSwitch;

.field final synthetic val$instance:Lcom/taobao/weex/WXSDKInstance;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXSwitch;Lcom/taobao/weex/WXSDKInstance;)V
    .registers 3

    .line 51
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSwitch$1;->this$0:Lcom/taobao/weex/ui/component/WXSwitch;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXSwitch$1;->val$instance:Lcom/taobao/weex/WXSDKInstance;

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

    const/4 p2, 0x0

    .line 55
    iput p2, p0, Lcom/taobao/weex/ui/component/WXSwitch$1;->mMeasureWidth:F

    .line 56
    iput p2, p0, Lcom/taobao/weex/ui/component/WXSwitch$1;->mMeasureHeight:F

    .line 58
    :try_start_5
    new-instance p2, Lcom/taobao/weex/ui/view/WXSwitchView;

    iget-object p3, p0, Lcom/taobao/weex/ui/component/WXSwitch$1;->val$instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p3}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/taobao/weex/ui/view/WXSwitchView;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x0

    .line 60
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    .line 61
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 62
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_27

    :cond_20
    float-to-int p1, p1

    const/high16 p3, -0x80000000

    .line 64
    invoke-static {p1, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 67
    :goto_27
    invoke-virtual {p2, p1, p4}, Lcom/taobao/weex/ui/view/WXSwitchView;->measure(II)V

    .line 68
    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/WXSwitchView;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/taobao/weex/ui/component/WXSwitch$1;->mMeasureWidth:F

    .line 69
    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/WXSwitchView;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/taobao/weex/ui/component/WXSwitch$1;->mMeasureHeight:F
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_38} :catch_39

    goto :goto_41

    :catch_39
    move-exception p1

    .line 71
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :goto_41
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXSwitch.AnonymousClass2 (com.taobao.weex.ui.component.WXSwitch$2)
.class Lcom/taobao/weex/ui/component/WXSwitch$2;
.super Ljava/lang/Object;
.source "WXSwitch.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXSwitch;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXSwitch;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXSwitch;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSwitch$2;->this$0:Lcom/taobao/weex/ui/component/WXSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    .line 101
    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 102
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "value"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 105
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 106
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string v2, "checked"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "attrs"

    .line 107
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXSwitch$2;->this$0:Lcom/taobao/weex/ui/component/WXSwitch;

    const-string v1, "change"

    invoke-virtual {p2, v1, p1, v0}, Lcom/taobao/weex/ui/component/WXSwitch;->fireEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method
