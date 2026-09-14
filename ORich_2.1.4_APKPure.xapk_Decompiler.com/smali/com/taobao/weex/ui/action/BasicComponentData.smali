###### Class com.taobao.weex.ui.action.BasicComponentData (com.taobao.weex.ui.action.BasicComponentData)
.class public Lcom/taobao/weex/ui/action/BasicComponentData;
.super Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;
.source "BasicComponentData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/taobao/weex/ui/action/BasicComponentData;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/taobao/weex/ui/action/BasicComponentData;

    iget-object v1, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mRef:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mComponentType:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mParentRef:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/weex/ui/action/BasicComponentData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/CSSShorthand;->clone()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/action/BasicComponentData;->setBorders(Lcom/taobao/weex/dom/CSSShorthand;)V

    .line 59
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/CSSShorthand;->clone()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/action/BasicComponentData;->setMargins(Lcom/taobao/weex/dom/CSSShorthand;)V

    .line 60
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/CSSShorthand;->clone()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/action/BasicComponentData;->setPaddings(Lcom/taobao/weex/dom/CSSShorthand;)V

    .line 61
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 63
    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXAttr;->clone()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/weex/ui/action/BasicComponentData;->mAttributes:Lio/dcloud/feature/uniapp/dom/AbsAttr;

    .line 65
    :cond_38
    iget-object v1, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mStyles:Lio/dcloud/feature/uniapp/dom/AbsStyle;

    if-eqz v1, :cond_44

    .line 66
    iget-object v1, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mStyles:Lio/dcloud/feature/uniapp/dom/AbsStyle;

    invoke-virtual {v1}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->clone()Lio/dcloud/feature/uniapp/dom/AbsStyle;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/weex/ui/action/BasicComponentData;->mStyles:Lio/dcloud/feature/uniapp/dom/AbsStyle;

    .line 68
    :cond_44
    iget-object v1, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mEvents:Lio/dcloud/feature/uniapp/dom/AbsEvent;

    if-eqz v1, :cond_50

    .line 69
    iget-object v1, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->mEvents:Lio/dcloud/feature/uniapp/dom/AbsEvent;

    invoke-virtual {v1}, Lio/dcloud/feature/uniapp/dom/AbsEvent;->clone()Lio/dcloud/feature/uniapp/dom/AbsEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/weex/ui/action/BasicComponentData;->mEvents:Lio/dcloud/feature/uniapp/dom/AbsEvent;

    .line 72
    :cond_50
    iget-wide v1, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->renderObjectPr:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_61

    .line 73
    iget-wide v1, p0, Lcom/taobao/weex/ui/action/BasicComponentData;->renderObjectPr:J

    invoke-static {v1, v2}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeCopyRenderObject(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/action/BasicComponentData;->setRenderObjectPr(J)V

    :cond_61
    return-object v0
.end method

.method public bridge synthetic clone()Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/BasicComponentData;->clone()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/BasicComponentData;->clone()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    return-object v0
.end method

.method public getAttrs()Lcom/taobao/weex/dom/WXAttr;
    .registers 2

    .line 46
    invoke-super {p0}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->getAttrs()Lio/dcloud/feature/uniapp/dom/AbsAttr;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/dom/WXAttr;

    return-object v0
.end method

.method public bridge synthetic getAttrs()Lio/dcloud/feature/uniapp/dom/AbsAttr;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    return-object v0
.end method

.method public getBorder()Lcom/taobao/weex/dom/CSSShorthand;
    .registers 2

    .line 81
    invoke-super {p0}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->getBorder()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/dom/CSSShorthand;

    return-object v0
.end method

.method public bridge synthetic getBorder()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    return-object v0
.end method

.method public getEvents()Lcom/taobao/weex/dom/WXEvent;
    .registers 2

    .line 52
    invoke-super {p0}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->getEvents()Lio/dcloud/feature/uniapp/dom/AbsEvent;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/dom/WXEvent;

    return-object v0
.end method

.method public bridge synthetic getEvents()Lio/dcloud/feature/uniapp/dom/AbsEvent;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    return-object v0
.end method

.method public getMargin()Lcom/taobao/weex/dom/CSSShorthand;
    .registers 2

    .line 87
    invoke-super {p0}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->getMargin()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/dom/CSSShorthand;

    return-object v0
.end method

.method public bridge synthetic getMargin()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    return-object v0
.end method

.method public getPadding()Lcom/taobao/weex/dom/CSSShorthand;
    .registers 2

    .line 93
    invoke-super {p0}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->getPadding()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/dom/CSSShorthand;

    return-object v0
.end method

.method public bridge synthetic getPadding()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    return-object v0
.end method

.method public getStyles()Lcom/taobao/weex/dom/WXStyle;
    .registers 2

    .line 40
    invoke-super {p0}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->getStyles()Lio/dcloud/feature/uniapp/dom/AbsStyle;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/dom/WXStyle;

    return-object v0
.end method

.method public bridge synthetic getStyles()Lio/dcloud/feature/uniapp/dom/AbsStyle;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    return-object v0
.end method
