###### Class com.taobao.weex.ui.component.WXLoadingIndicator (com.taobao.weex.ui.component.WXLoadingIndicator)
.class public Lcom/taobao/weex/ui/component/WXLoadingIndicator;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "WXLoadingIndicator.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXComponent<",
        "Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANIMATING:Ljava/lang/String; = "animating"


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 5

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method private setAnimatingSp(Z)V
    .registers 2

    if-eqz p1, :cond_c

    .line 88
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXLoadingIndicator;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->start()V

    goto :goto_15

    .line 90
    :cond_c
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXLoadingIndicator;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->stop()V

    :goto_15
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 96
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    .line 97
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXLoadingIndicator;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 98
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXLoadingIndicator;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->destory()V

    :cond_12
    return-void
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 33
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXLoadingIndicator;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;
    .registers 3

    .line 44
    new-instance v0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public setAnimating(Z)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "animating"
    .end annotation

    if-eqz p1, :cond_c

    .line 80
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXLoadingIndicator;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->start()V

    goto :goto_15

    .line 82
    :cond_c
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXLoadingIndicator;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->stop()V

    :goto_15
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "color"
    .end annotation

    if-eqz p1, :cond_1f

    const-string v0, ""

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const/high16 v0, -0x10000

    .line 72
    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result p1

    .line 73
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXLoadingIndicator;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->setColorSchemeColors([I)V

    :cond_1f
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 6

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_64

    goto :goto_2d

    :sswitch_d
    const-string v0, "animating"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_2d

    :cond_16
    const/4 v2, 0x2

    goto :goto_2d

    :sswitch_18
    const-string v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_2d

    :cond_21
    const/4 v2, 0x1

    goto :goto_2d

    :sswitch_23
    const-string v0, "arrow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_72

    .line 66
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 56
    :pswitch_36
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 58
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXLoadingIndicator;->setAnimating(Z)V

    :cond_43
    return v1

    .line 51
    :pswitch_44
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 53
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXLoadingIndicator;->setColor(Ljava/lang/String;)V

    :cond_4d
    return v1

    .line 62
    :pswitch_4e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 63
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXLoadingIndicator;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->setShowArrow(Z)V

    return v1

    :sswitch_data_64
    .sparse-switch
        0x58c7409 -> :sswitch_23
        0x5a72f63 -> :sswitch_18
        0x42ab1b5e -> :sswitch_d
    .end sparse-switch

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_44
        :pswitch_36
    .end packed-switch
.end method
