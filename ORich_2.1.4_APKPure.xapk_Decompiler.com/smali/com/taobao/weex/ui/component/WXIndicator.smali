###### Class com.taobao.weex.ui.component.WXIndicator (com.taobao.weex.ui.component.WXIndicator)
.class public Lcom/taobao/weex/ui/component/WXIndicator;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "WXIndicator.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXComponent<",
        "Lcom/taobao/weex/ui/view/WXCircleIndicator;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/taobao/weex/ui/component/WXIndicator;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 5

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXIndicator;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXCircleIndicator;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXCircleIndicator;
    .registers 3

    .line 65
    new-instance v0, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXCircleIndicator;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXIndicator;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    instance-of p1, p1, Lcom/taobao/weex/ui/component/WXSlider;

    if-nez p1, :cond_26

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXIndicator;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    instance-of p1, p1, Lio/dcloud/feature/weex/extend/DCWXSlider;

    if-eqz p1, :cond_16

    goto :goto_26

    .line 69
    :cond_16
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-nez p1, :cond_1e

    const/4 p1, 0x0

    return-object p1

    .line 70
    :cond_1e
    new-instance p1, Lcom/taobao/weex/common/WXRuntimeException;

    const-string v0, "WXIndicator initView error."

    invoke-direct {p1, v0}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    :goto_26
    return-object v0
.end method

.method protected bridge synthetic onHostViewInitialized(Landroid/view/View;)V
    .registers 2

    .line 44
    check-cast p1, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXIndicator;->onHostViewInitialized(Lcom/taobao/weex/ui/view/WXCircleIndicator;)V

    return-void
.end method

.method protected onHostViewInitialized(Lcom/taobao/weex/ui/view/WXCircleIndicator;)V
    .registers 2

    .line 78
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->onHostViewInitialized(Landroid/view/View;)V

    .line 79
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXIndicator;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    instance-of p1, p1, Lcom/taobao/weex/ui/component/WXSlider;

    if-eqz p1, :cond_15

    .line 80
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXIndicator;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/WXSlider;

    invoke-virtual {p1, p0}, Lcom/taobao/weex/ui/component/WXSlider;->addIndicator(Lcom/taobao/weex/ui/component/WXIndicator;)V

    goto :goto_26

    .line 81
    :cond_15
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXIndicator;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    instance-of p1, p1, Lio/dcloud/feature/weex/extend/DCWXSlider;

    if-eqz p1, :cond_26

    .line 82
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXIndicator;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/extend/DCWXSlider;

    invoke-virtual {p1, p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->addIndicator(Lcom/taobao/weex/ui/component/WXIndicator;)V

    :cond_26
    :goto_26
    return-void
.end method

.method protected bridge synthetic setHostLayoutParams(Landroid/view/View;IIIIII)V
    .registers 8

    .line 44
    check-cast p1, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual/range {p0 .. p7}, Lcom/taobao/weex/ui/component/WXIndicator;->setHostLayoutParams(Lcom/taobao/weex/ui/view/WXCircleIndicator;IIIIII)V

    return-void
.end method

.method protected setHostLayoutParams(Lcom/taobao/weex/ui/view/WXCircleIndicator;IIIIII)V
    .registers 15

    .line 58
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v0, p0

    move-object v1, v6

    move v2, p4

    move v3, p6

    move v4, p5

    move v5, p7

    .line 59
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/component/WXIndicator;->setMarginsSupportRTL(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    .line 60
    invoke-virtual {p1, v6}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setItemColor(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "itemColor"
    .end annotation

    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 112
    invoke-static {p1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result p1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_29

    .line 114
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->setPageColor(I)V

    .line 115
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->forceLayout()V

    .line 116
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->requestLayout()V

    :cond_29
    return-void
.end method

.method public setItemSelectedColor(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "itemSelectedColor"
    .end annotation

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 124
    invoke-static {p1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result p1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_29

    .line 126
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->setFillColor(I)V

    .line 127
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->forceLayout()V

    .line 128
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->requestLayout()V

    :cond_29
    return-void
.end method

.method public setItemSize(I)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "itemSize"
    .end annotation

    if-gez p1, :cond_3

    return-void

    .line 138
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXIndicator;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->setRadius(F)V

    .line 139
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->forceLayout()V

    .line 140
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->requestLayout()V

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 6

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_58

    goto :goto_2d

    :sswitch_d
    const-string v0, "itemColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_2d

    :cond_16
    const/4 v2, 0x2

    goto :goto_2d

    :sswitch_18
    const-string v0, "itemSelectedColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_2d

    :cond_21
    const/4 v2, 0x1

    goto :goto_2d

    :sswitch_23
    const-string v0, "itemSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_66

    .line 105
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 90
    :pswitch_36
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 92
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXIndicator;->setItemColor(Ljava/lang/String;)V

    :cond_3f
    return v1

    .line 95
    :pswitch_40
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 97
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXIndicator;->setItemSelectedColor(Ljava/lang/String;)V

    :cond_49
    return v1

    .line 100
    :pswitch_4a
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_57

    .line 102
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXIndicator;->setItemSize(I)V

    :cond_57
    return v1

    :sswitch_data_58
    .sparse-switch
        0x462f0db4 -> :sswitch_23
        0x6fa84135 -> :sswitch_18
        0x7ed3b810 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_40
        :pswitch_36
    .end packed-switch
.end method

.method public setShowIndicators(Z)V
    .registers 3

    .line 144
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_14

    .line 148
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->setVisibility(I)V

    goto :goto_1f

    .line 150
    :cond_14
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->setVisibility(I)V

    :goto_1f
    return-void
.end method
