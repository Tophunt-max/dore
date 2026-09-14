###### Class io.dcloud.feature.uniapp.ui.component.AbsBasicComponent (io.dcloud.feature.uniapp.ui.component.AbsBasicComponent)
.class public abstract Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;
.super Ljava/lang/Object;
.source "AbsBasicComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mBasicComponentData:Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;

.field private mComponentType:Ljava/lang/String;

.field private mExtra:Ljava/lang/Object;

.field private mIsLayoutRTL:Z

.field private mLayoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

.field private mLayoutSize:Lcom/taobao/weex/ui/action/GraphicSize;

.field private mRef:Ljava/lang/String;

.field private mViewPortWidth:F


# direct methods
.method public constructor <init>(Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x443b8000    # 750.0f

    .line 46
    iput v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mViewPortWidth:F

    .line 49
    iput-object p1, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mBasicComponentData:Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;

    .line 50
    iget-object v0, p1, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mRef:Ljava/lang/String;

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mRef:Ljava/lang/String;

    .line 51
    iget-object p1, p1, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mComponentType:Ljava/lang/String;

    iput-object p1, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mComponentType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final addAttr(Ljava/util/Map;)V
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

    if-eqz p1, :cond_e

    .line 112
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    .line 115
    :cond_9
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mBasicComponentData:Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addAttr(Ljava/util/Map;)V

    :cond_e
    :goto_e
    return-void
.end method

.method public final addEvent(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_e

    .line 140
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    .line 144
    :cond_9
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mBasicComponentData:Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addEvent(Ljava/util/Set;)V

    :cond_e
    :goto_e
    return-void
.end method

.method public final addShorthand(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 148
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mBasicComponentData:Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;

    if-eqz v0, :cond_d

    .line 149
    invoke-virtual {v0, p1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addShorthand(Ljava/util/Map;)V

    :cond_d
    return-void
.end method

.method public final addStyle(Ljava/util/Map;)V
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

    if-eqz p1, :cond_e

    .line 119
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    .line 122
    :cond_9
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mBasicComponentData:Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addStyle(Ljava/util/Map;)V

    :cond_e
    :goto_e
    return-void
.end method

.method public final addStyle(Ljava/util/Map;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_e

    .line 126
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    .line 129
    :cond_9
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mBasicComponentData:Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addStyle(Ljava/util/Map;Z)V

    :cond_e
    :goto_e
    return-void
.end method

.method protected bindComponent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V
    .registers 3

    .line 59
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getComponentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mComponentType:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mRef:Ljava/lang/String;

    return-void
.end method

.method public getAttrs()Lio/dcloud/feature/uniapp/dom/AbsAttr;
    .registers 2

    .line 69
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mBasicComponentData:Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->getAttrs()Lio/dcloud/feature/uniapp/dom/AbsAttr;

    move-result-object v0

    return-object v0
.end method

.method public getBasicComponentData()Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;
    .registers 2

    .line 55
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mBasicComponentData:Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;

    return-object v0
.end method

.method public getBorder()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
    .registers 2

    .line 96
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mBasicComponentData:Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->getBorder()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    move-result-object v0

    return-object v0
.end method

.method public getCSSLayoutBottom()F
    .registers 2

    .line 216
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mLayoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicPosition;->getBottom()F

    move-result v0

    :goto_a
    return v0
.end method

.method public getCSSLayoutLeft()F
    .registers 2

    .line 220
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mLayoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicPosition;->getLeft()F

    move-result v0

    :goto_a
    return v0
.end method

.method public getCSSLayoutRight()F
    .registers 2

    .line 224
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mLayoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicPosition;->getRight()F

    move-result v0

    :goto_a
    return v0
.end method

.method public getCSSLayoutTop()F
    .registers 2

    .line 212
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mLayoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicPosition;->getTop()F

    move-result v0

    :goto_a
    return v0
.end method

.method public getComponentType()Ljava/lang/String;
    .registers 2

    .line 174
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mComponentType:Ljava/lang/String;

    return-object v0
.end method

.method public getEvents()Lio/dcloud/feature/uniapp/dom/AbsEvent;
    .registers 2

    .line 74
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mBasicComponentData:Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->getEvents()Lio/dcloud/feature/uniapp/dom/AbsEvent;

    move-result-object v0

    return-object v0
.end method

.method public getExtra()Ljava/lang/Object;
    .registers 2

    .line 166
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mExtra:Ljava/lang/Object;

    return-object v0
.end method

.method public getLayoutHeight()F
    .registers 2

    .line 232
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mLayoutSize:Lcom/taobao/weex/ui/action/GraphicSize;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result v0

    :goto_a
    return v0
.end method

.method public getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;
    .registers 3

    .line 190
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mLayoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

    if-nez v0, :cond_c

    .line 191
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicPosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/taobao/weex/ui/action/GraphicPosition;-><init>(FFFF)V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mLayoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

    .line 193
    :cond_c
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mLayoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

    return-object v0
.end method

.method public getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;
    .registers 3

    .line 201
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mLayoutSize:Lcom/taobao/weex/ui/action/GraphicSize;

    if-nez v0, :cond_c

    .line 202
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/taobao/weex/ui/action/GraphicSize;-><init>(FF)V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mLayoutSize:Lcom/taobao/weex/ui/action/GraphicSize;

    .line 204
    :cond_c
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mLayoutSize:Lcom/taobao/weex/ui/action/GraphicSize;

    return-object v0
.end method

.method public getLayoutWidth()F
    .registers 2

    .line 228
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mLayoutSize:Lcom/taobao/weex/ui/action/GraphicSize;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v0

    :goto_a
    return v0
.end method

.method public getMargin()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
    .registers 2

    .line 81
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mBasicComponentData:Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->getMargin()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    move-result-object v0

    return-object v0
.end method

.method public getPadding()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
    .registers 2

    .line 89
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mBasicComponentData:Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->getPadding()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    move-result-object v0

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mRef:Ljava/lang/String;

    return-object v0
.end method

.method public getStyles()Lio/dcloud/feature/uniapp/dom/AbsStyle;
    .registers 2

    .line 64
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mBasicComponentData:Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->getStyles()Lio/dcloud/feature/uniapp/dom/AbsStyle;

    move-result-object v0

    return-object v0
.end method

.method public getViewPortWidth()I
    .registers 2

    .line 158
    iget v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mViewPortWidth:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getViewPortWidthForFloat()F
    .registers 2

    .line 154
    iget v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mViewPortWidth:F

    return v0
.end method

.method public isLayoutRTL()Z
    .registers 2

    .line 186
    iget-boolean v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mIsLayoutRTL:Z

    return v0
.end method

.method public final setBorders(Lcom/taobao/weex/dom/CSSShorthand;)V
    .registers 3

    .line 108
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mBasicComponentData:Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->setBorders(Lcom/taobao/weex/dom/CSSShorthand;)V

    return-void
.end method

.method public setIsLayoutRTL(Z)V
    .registers 2

    .line 182
    iput-boolean p1, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mIsLayoutRTL:Z

    return-void
.end method

.method protected setLayoutPosition(Lcom/taobao/weex/ui/action/GraphicPosition;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mLayoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

    return-void
.end method

.method protected setLayoutSize(Lcom/taobao/weex/ui/action/GraphicSize;)V
    .registers 2

    .line 208
    iput-object p1, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mLayoutSize:Lcom/taobao/weex/ui/action/GraphicSize;

    return-void
.end method

.method public final setMargins(Lcom/taobao/weex/dom/CSSShorthand;)V
    .registers 3

    .line 100
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mBasicComponentData:Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->setMargins(Lcom/taobao/weex/dom/CSSShorthand;)V

    return-void
.end method

.method public final setPaddings(Lcom/taobao/weex/dom/CSSShorthand;)V
    .registers 3

    .line 104
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mBasicComponentData:Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->setPaddings(Lcom/taobao/weex/dom/CSSShorthand;)V

    return-void
.end method

.method public setViewPortWidth(F)V
    .registers 2

    .line 162
    iput p1, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mViewPortWidth:F

    return-void
.end method

.method public updateExtra(Ljava/lang/Object;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mExtra:Ljava/lang/Object;

    return-void
.end method

.method public final updateStyle(Ljava/util/Map;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_12

    .line 133
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_12

    .line 136
    :cond_9
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->mBasicComponentData:Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->getStyles()Lio/dcloud/feature/uniapp/dom/AbsStyle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->updateStyle(Ljava/util/Map;Z)V

    :cond_12
    :goto_12
    return-void
.end method
