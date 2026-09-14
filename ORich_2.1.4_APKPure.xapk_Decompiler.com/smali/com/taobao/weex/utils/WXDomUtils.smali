###### Class com.taobao.weex.utils.WXDomUtils (com.taobao.weex.utils.WXDomUtils)
.class public Lcom/taobao/weex/utils/WXDomUtils;
.super Ljava/lang/Object;
.source "WXDomUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentHeight(Lcom/taobao/weex/ui/component/WXComponent;)F
    .registers 5

    .line 63
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v0

    .line 65
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    .line 66
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p0

    .line 68
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    invoke-static {v2}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result v3

    if-nez v3, :cond_19

    sub-float/2addr v0, v2

    .line 71
    :cond_19
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    invoke-static {v1}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result v2

    if-nez v2, :cond_26

    sub-float/2addr v0, v1

    .line 75
    :cond_26
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    invoke-static {v1}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result v2

    if-nez v2, :cond_33

    sub-float/2addr v0, v1

    .line 78
    :cond_33
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result p0

    invoke-static {p0}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result v1

    if-nez v1, :cond_40

    sub-float/2addr v0, p0

    :cond_40
    return v0
.end method

.method public static getContentWidth(Lcom/taobao/weex/dom/CSSShorthand;Lcom/taobao/weex/dom/CSSShorthand;F)F
    .registers 5

    .line 90
    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    invoke-static {v0}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result v1

    if-nez v1, :cond_d

    sub-float/2addr p2, v0

    .line 93
    :cond_d
    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result p0

    invoke-static {p0}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result v0

    if-nez v0, :cond_1a

    sub-float/2addr p2, p0

    .line 97
    :cond_1a
    sget-object p0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, p0}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result p0

    invoke-static {p0}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result v0

    if-nez v0, :cond_27

    sub-float/2addr p2, p0

    .line 100
    :cond_27
    sget-object p0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, p0}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result p0

    invoke-static {p0}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result p1

    if-nez p1, :cond_34

    sub-float/2addr p2, p0

    :cond_34
    return p2
.end method

.method public static getContentWidth(Lcom/taobao/weex/ui/component/WXComponent;)F
    .registers 5

    .line 36
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v0

    .line 38
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    .line 39
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p0

    .line 41
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    invoke-static {v2}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result v3

    if-nez v3, :cond_19

    sub-float/2addr v0, v2

    .line 44
    :cond_19
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    invoke-static {v1}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result v2

    if-nez v2, :cond_26

    sub-float/2addr v0, v1

    .line 48
    :cond_26
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    invoke-static {v1}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result v2

    if-nez v2, :cond_33

    sub-float/2addr v0, v1

    .line 51
    :cond_33
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result p0

    invoke-static {p0}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result v1

    if-nez v1, :cond_40

    sub-float/2addr v0, p0

    :cond_40
    return v0
.end method
