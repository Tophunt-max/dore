###### Class com.taobao.weex.ui.view.border.BorderUtil (com.taobao.weex.ui.view.border.BorderUtil)
.class Lcom/taobao/weex/ui/view/border/BorderUtil;
.super Ljava/lang/Object;
.source "BorderUtil.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fetchFromSparseArray(Landroid/util/SparseIntArray;II)I
    .registers 3

    if-nez p0, :cond_3

    goto :goto_11

    .line 31
    :cond_3
    sget-object p2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    .line 32
    invoke-virtual {p2}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    :goto_11
    return p2
.end method

.method static updateSparseArray(Landroid/util/SparseIntArray;II)V
    .registers 4

    .line 36
    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_36

    .line 37
    sget-object p1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    sget-object p1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    sget-object p1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    sget-object p1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    sget-object p1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_39

    .line 43
    :cond_36
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :goto_39
    return-void
.end method
