###### Class com.taobao.weex.ui.component.basic.WXBasicComponent (com.taobao.weex.ui.component.basic.WXBasicComponent)
.class public abstract Lcom/taobao/weex/ui/component/basic/WXBasicComponent;
.super Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;
.source "WXBasicComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;-><init>(Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;)V

    return-void
.end method


# virtual methods
.method public final getAttrs()Lcom/taobao/weex/dom/WXAttr;
    .registers 2

    .line 48
    invoke-super {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getAttrs()Lio/dcloud/feature/uniapp/dom/AbsAttr;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/dom/WXAttr;

    return-object v0
.end method

.method public bridge synthetic getAttrs()Lio/dcloud/feature/uniapp/dom/AbsAttr;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    return-object v0
.end method

.method public getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;
    .registers 2

    .line 59
    invoke-super {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getBasicComponentData()Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/action/BasicComponentData;

    return-object v0
.end method

.method public bridge synthetic getBasicComponentData()Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    return-object v0
.end method

.method public final getBorder()Lcom/taobao/weex/dom/CSSShorthand;
    .registers 2

    .line 65
    invoke-super {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getBorder()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/dom/CSSShorthand;

    return-object v0
.end method

.method public bridge synthetic getBorder()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    return-object v0
.end method

.method public final getEvents()Lcom/taobao/weex/dom/WXEvent;
    .registers 2

    .line 54
    invoke-super {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getEvents()Lio/dcloud/feature/uniapp/dom/AbsEvent;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/dom/WXEvent;

    return-object v0
.end method

.method public bridge synthetic getEvents()Lio/dcloud/feature/uniapp/dom/AbsEvent;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    return-object v0
.end method

.method public final getMargin()Lcom/taobao/weex/dom/CSSShorthand;
    .registers 2

    .line 77
    invoke-super {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getMargin()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/dom/CSSShorthand;

    return-object v0
.end method

.method public bridge synthetic getMargin()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    return-object v0
.end method

.method public final getPadding()Lcom/taobao/weex/dom/CSSShorthand;
    .registers 2

    .line 71
    invoke-super {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getPadding()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/dom/CSSShorthand;

    return-object v0
.end method

.method public bridge synthetic getPadding()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    return-object v0
.end method

.method public final getStyles()Lcom/taobao/weex/dom/WXStyle;
    .registers 2

    .line 42
    invoke-super {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getStyles()Lio/dcloud/feature/uniapp/dom/AbsStyle;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/dom/WXStyle;

    return-object v0
.end method

.method public bridge synthetic getStyles()Lio/dcloud/feature/uniapp/dom/AbsStyle;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    return-object v0
.end method
