###### Class io.dcloud.feature.weex.adapter.FrescoImageComponent (io.dcloud.feature.weex.adapter.FrescoImageComponent)
.class public Lio/dcloud/feature/weex/adapter/FrescoImageComponent;
.super Lcom/taobao/weex/ui/component/WXImage;
.source "FrescoImageComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;
    }
.end annotation


# instance fields
.field private mResizeMode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 4

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXImage;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const-string p1, "scaleToFill"

    .line 52
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mResizeMode:Ljava/lang/String;

    .line 56
    invoke-virtual {p3}, Lcom/taobao/weex/ui/action/BasicComponentData;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p1

    const-string p2, "flex"

    invoke-virtual {p1, p2}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 57
    new-instance p1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$1;

    invoke-direct {p1, p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$1;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;)V

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V

    :cond_1b
    return-void
.end method

.method private updateBorderRadius()V
    .registers 7

    .line 251
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->getBorderDrawable(Landroid/view/View;)Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    .line 252
    new-instance v1, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v1}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    if-eqz v0, :cond_22

    .line 255
    new-instance v2, Landroid/graphics/RectF;

    invoke-static {p0}, Lcom/taobao/weex/utils/WXDomUtils;->getContentWidth(Lcom/taobao/weex/ui/component/WXComponent;)F

    move-result v3

    invoke-static {p0}, Lcom/taobao/weex/utils/WXDomUtils;->getContentHeight(Lcom/taobao/weex/ui/component/WXComponent;)F

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 256
    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderInnerRadius(Landroid/graphics/RectF;)[F

    move-result-object v0

    goto :goto_29

    :cond_22
    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 258
    fill-array-data v0, :array_3c

    .line 260
    :goto_29
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/generic/RoundingParams;->setCornersRadii([F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 261
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex/adapter/FrescoImageView;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/adapter/FrescoImageView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;->setRoundingParams(Lcom/facebook/drawee/generic/RoundingParams;)V

    return-void

    :array_3c
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->initComponentHostView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/widget/ImageView;
    .registers 4

    .line 86
    new-instance v0, Lio/dcloud/feature/weex/adapter/FrescoImageView;

    invoke-direct {v0, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageView;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {v0}, Lio/dcloud/feature/weex/adapter/FrescoImageView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;

    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_XY:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {p1, v1}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;->setActualImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    return-object v0
.end method

.method public onImageFinish(ZLjava/util/Map;)V
    .registers 6

    .line 190
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXImage;->onImageFinish(ZLjava/util/Map;)V

    if-eqz p2, :cond_90

    .line 192
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mResizeMode:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "heightFix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "height"

    const-string v2, "width"

    if-nez v0, :cond_58

    const-string v0, "widthFix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_90

    .line 194
    :cond_1f
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 195
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 197
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getLayoutWidth()F

    move-result v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    int-to-float p1, p2

    mul-float p1, p1, v0

    .line 199
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getLayoutHeight()F

    move-result p2

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_90

    .line 200
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p2

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V

    goto :goto_90

    .line 205
    :cond_58
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 206
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 208
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getLayoutHeight()F

    move-result v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    int-to-float p1, p1

    mul-float p1, p1, v0

    .line 210
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getLayoutWidth()F

    move-result p2

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_90

    .line 211
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p2

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V

    :cond_90
    :goto_90
    return-void
.end method

.method public setFadeAnim(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "fadeShow"
    .end annotation

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 94
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex/adapter/FrescoImageView;

    .line 95
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageView;->setFadeShow(Z)V

    :cond_1d
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 6

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_54

    goto :goto_2d

    :sswitch_d
    const-string v0, "resizeMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_2d

    :cond_16
    const/4 v2, 0x2

    goto :goto_2d

    :sswitch_18
    const-string v0, "mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_2d

    :cond_21
    const/4 v2, 0x1

    goto :goto_2d

    :sswitch_23
    const-string v0, "resize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_62

    .line 121
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXImage;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 103
    :pswitch_36
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 105
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->setResizeMode(Ljava/lang/String;)V

    :cond_3f
    return v1

    .line 115
    :pswitch_40
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 117
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->setResizeMode(Ljava/lang/String;)V

    :cond_49
    return v1

    .line 109
    :pswitch_4a
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_53

    .line 111
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->setResizeMode(Ljava/lang/String;)V

    :cond_53
    return v1

    :sswitch_data_54
    .sparse-switch
        -0x37b2634c -> :sswitch_23
        0x3339a3 -> :sswitch_18
        0x7a2cd077 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_40
        :pswitch_36
    .end packed-switch
.end method

.method public setResizeMode(Ljava/lang/String;)V
    .registers 7

    .line 127
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex/adapter/FrescoImageView;

    .line 128
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_XY:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 129
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mResizeMode:Ljava/lang/String;

    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_145

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_150

    goto/16 :goto_f2

    :sswitch_1d
    const-string v3, "contain"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto/16 :goto_f2

    :cond_27
    const/16 v2, 0x10

    goto/16 :goto_f2

    :sswitch_2b
    const-string v3, "bottom right"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    goto/16 :goto_f2

    :cond_35
    const/16 v2, 0xf

    goto/16 :goto_f2

    :sswitch_39
    const-string v3, "aspectFill"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    goto/16 :goto_f2

    :cond_43
    const/16 v2, 0xe

    goto/16 :goto_f2

    :sswitch_47
    const-string v3, "right"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_51

    goto/16 :goto_f2

    :cond_51
    const/16 v2, 0xd

    goto/16 :goto_f2

    :sswitch_55
    const-string v3, "cover"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    goto/16 :goto_f2

    :cond_5f
    const/16 v2, 0xc

    goto/16 :goto_f2

    :sswitch_63
    const-string v3, "left"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6d

    goto/16 :goto_f2

    :cond_6d
    const/16 v2, 0xb

    goto/16 :goto_f2

    :sswitch_71
    const-string v3, "top"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7b

    goto/16 :goto_f2

    :cond_7b
    const/16 v2, 0xa

    goto/16 :goto_f2

    :sswitch_7f
    const-string v3, "bottom left"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_89

    goto/16 :goto_f2

    :cond_89
    const/16 v2, 0x9

    goto/16 :goto_f2

    :sswitch_8d
    const-string v3, "scaleToFill"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_97

    goto/16 :goto_f2

    :cond_97
    const/16 v2, 0x8

    goto/16 :goto_f2

    :sswitch_9b
    const-string v3, "top left"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a4

    goto :goto_f2

    :cond_a4
    const/4 v2, 0x7

    goto :goto_f2

    :sswitch_a6
    const-string v3, "aspectFit"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_af

    goto :goto_f2

    :cond_af
    const/4 v2, 0x6

    goto :goto_f2

    :sswitch_b1
    const-string v3, "center"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ba

    goto :goto_f2

    :cond_ba
    const/4 v2, 0x5

    goto :goto_f2

    :sswitch_bc
    const-string v3, "bottom"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c5

    goto :goto_f2

    :cond_c5
    const/4 v2, 0x4

    goto :goto_f2

    :sswitch_c7
    const-string v3, "widthFix"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d0

    goto :goto_f2

    :cond_d0
    const/4 v2, 0x3

    goto :goto_f2

    :sswitch_d2
    const-string v3, "heightFix"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_db

    goto :goto_f2

    :cond_db
    const/4 v2, 0x2

    goto :goto_f2

    :sswitch_dd
    const-string v3, "top right"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e6

    goto :goto_f2

    :cond_e6
    const/4 v2, 0x1

    goto :goto_f2

    :sswitch_e8
    const-string v3, "stretch"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f1

    goto :goto_f2

    :cond_f1
    const/4 v2, 0x0

    :goto_f2
    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    packed-switch v2, :pswitch_data_196

    goto :goto_145

    .line 136
    :pswitch_fb
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_145

    .line 175
    :pswitch_fe
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;

    invoke-direct {v1, p0, p1, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V

    goto :goto_145

    .line 148
    :pswitch_104
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_145

    .line 163
    :pswitch_107
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;

    invoke-direct {v1, p0, p1, v4}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V

    goto :goto_145

    .line 133
    :pswitch_10d
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_145

    .line 160
    :pswitch_110
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;

    invoke-direct {v1, p0, v3, v4}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V

    goto :goto_145

    .line 151
    :pswitch_116
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;

    invoke-direct {v1, p0, v4, v3}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V

    goto :goto_145

    .line 172
    :pswitch_11c
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;

    invoke-direct {v1, p0, v3, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V

    goto :goto_145

    .line 142
    :pswitch_122
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_XY:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_145

    .line 166
    :pswitch_125
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;

    invoke-direct {v1, p0, v3, v3}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V

    goto :goto_145

    .line 145
    :pswitch_12b
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_145

    .line 157
    :pswitch_12e
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;

    invoke-direct {v1, p0, v4, v4}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V

    goto :goto_145

    .line 154
    :pswitch_134
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;

    invoke-direct {v1, p0, v4, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V

    goto :goto_145

    .line 179
    :pswitch_13a
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_145

    .line 169
    :pswitch_13d
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;

    invoke-direct {v1, p0, p1, v3}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V

    goto :goto_145

    .line 139
    :pswitch_143
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_XY:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 185
    :cond_145
    :goto_145
    invoke-virtual {v0}, Lio/dcloud/feature/weex/adapter/FrescoImageView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;

    invoke-virtual {p1, v1}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;->setActualImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    return-void

    nop

    :sswitch_data_150
    .sparse-switch
        -0x702b18fb -> :sswitch_e8
        -0x648e7c6f -> :sswitch_dd
        -0x603b6292 -> :sswitch_d2
        -0x52ae3791 -> :sswitch_c7
        -0x527265d5 -> :sswitch_bc
        -0x514d33ab -> :sswitch_b1
        -0x512e7f67 -> :sswitch_a6
        -0x3d0fa40e -> :sswitch_9b
        -0x2f85e778 -> :sswitch_8d
        -0x27c76724 -> :sswitch_7f
        0x1c155 -> :sswitch_71
        0x32a007 -> :sswitch_63
        0x5a753b7 -> :sswitch_55
        0x677c21c -> :sswitch_47
        0x2b5e91fb -> :sswitch_39
        0x2f30e3e7 -> :sswitch_2b
        0x38b724d4 -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_196
    .packed-switch 0x0
        :pswitch_143
        :pswitch_13d
        :pswitch_13a
        :pswitch_13a
        :pswitch_134
        :pswitch_12e
        :pswitch_12b
        :pswitch_125
        :pswitch_122
        :pswitch_11c
        :pswitch_116
        :pswitch_110
        :pswitch_10d
        :pswitch_107
        :pswitch_104
        :pswitch_fe
        :pswitch_fb
    .end packed-switch
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

    .line 244
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 245
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXImage;->updateProperties(Ljava/util/Map;)V

    .line 246
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->updateBorderRadius()V

    :cond_c
    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.FrescoImageComponent.AnonymousClass1 (io.dcloud.feature.weex.adapter.FrescoImageComponent$1)
.class Lio/dcloud/feature/weex/adapter/FrescoImageComponent$1;
.super Lcom/taobao/weex/layout/ContentBoxMeasurement;
.source "FrescoImageComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/FrescoImageComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$1;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

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

    .line 64
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$1;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-virtual {p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p1

    const/high16 p3, 0x43700000    # 240.0f

    invoke-static {p3, p1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    float-to-int p1, p1

    .line 66
    invoke-static {p2}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result p3

    if-eqz p3, :cond_18

    int-to-float p2, p1

    .line 71
    :cond_18
    iput p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$1;->mMeasureHeight:F

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.FrescoImageComponent.CustomScaleType (io.dcloud.feature.weex.adapter.FrescoImageComponent$CustomScaleType)
.class public Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;
.super Ljava/lang/Object;
.source "FrescoImageComponent.java"

# interfaces
.implements Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/adapter/FrescoImageComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomScaleType"
.end annotation


# instance fields
.field private dxf:F

.field private dyf:F

.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;


# direct methods
.method public constructor <init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V
    .registers 4

    .line 223
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;->dxf:F

    .line 225
    iput p3, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;->dyf:F

    return-void
.end method


# virtual methods
.method public getTransform(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFF)Landroid/graphics/Matrix;
    .registers 8

    int-to-float p3, p3

    .line 231
    iget-object p5, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-virtual {p5}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p5

    invoke-virtual {p5}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p5

    invoke-static {p3, p5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p5

    div-float/2addr p5, p3

    .line 233
    iget p6, p2, Landroid/graphics/Rect;->left:I

    int-to-float p6, p6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float p3, p3, p5

    sub-float/2addr v0, p3

    iget p3, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;->dxf:F

    mul-float v0, v0, p3

    add-float/2addr p6, v0

    .line 234
    iget p3, p2, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    int-to-float p4, p4

    mul-float p4, p4, p5

    sub-float/2addr p2, p4

    iget p4, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;->dyf:F

    mul-float p2, p2, p4

    add-float/2addr p3, p2

    .line 236
    invoke-virtual {p1, p5, p5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 237
    invoke-virtual {p1, p6, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object p1
.end method
