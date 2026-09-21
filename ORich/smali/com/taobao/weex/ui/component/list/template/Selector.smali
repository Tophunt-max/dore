###### Class com.taobao.weex.ui.component.list.template.Selector (com.taobao.weex.ui.component.list.template.Selector)
.class public Lcom/taobao/weex/ui/component/list/template/Selector;
.super Ljava/lang/Object;
.source "Selector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closest(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "\\[|]"

    const-string v1, ""

    .line 67
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "="

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 69
    array-length v0, p1

    if-gtz v0, :cond_19

    return-void

    :cond_19
    const/4 v0, 0x0

    .line 72
    aget-object v0, p1, v0

    const/4 v1, 0x0

    .line 74
    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_27

    .line 75
    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 77
    :cond_27
    invoke-static {p0, v0, v1, p2}, Lcom/taobao/weex/ui/component/list/template/Selector;->closestByAttrs(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static closestByAttrs(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-static {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/Selector;->matchAttrs(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 82
    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_9
    instance-of v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;

    if-nez v0, :cond_19

    instance-of v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    if-eqz v0, :cond_12

    goto :goto_19

    .line 87
    :cond_12
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/list/template/Selector;->queryElementAllByAttrs(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_19
    :goto_19
    return-void
.end method

.method private static matchAttrs(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 105
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isWaste()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 108
    :cond_8
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    .line 111
    :cond_13
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 p0, 0x1

    return p0

    .line 114
    :cond_1b
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_26

    return v1

    .line 118
    :cond_26
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static queryElementAll(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "\\[|]"

    const-string v1, ""

    .line 44
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "="

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 46
    array-length v0, p1

    if-gtz v0, :cond_19

    return-void

    :cond_19
    const/4 v0, 0x0

    .line 49
    aget-object v1, p1, v0

    const/4 v2, 0x0

    .line 51
    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_27

    .line 52
    aget-object p1, p1, v4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 54
    :cond_27
    instance-of p1, p0, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz p1, :cond_3d

    .line 55
    check-cast p0, Lcom/taobao/weex/ui/component/WXVContainer;

    .line 56
    :goto_2d
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result p1

    if-ge v0, p1, :cond_3d

    .line 57
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    invoke-static {p1, v1, v2, p2}, Lcom/taobao/weex/ui/component/list/template/Selector;->queryElementAllByAttrs(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_3d
    return-void
.end method

.method private static queryElementAllByAttrs(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;)V"
        }
    .end annotation

    .line 92
    invoke-static {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/Selector;->matchAttrs(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 93
    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_9
    instance-of v0, p0, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_20

    .line 96
    check-cast p0, Lcom/taobao/weex/ui/component/WXVContainer;

    const/4 v0, 0x0

    .line 97
    :goto_10
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 98
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lcom/taobao/weex/ui/component/list/template/Selector;->queryElementAllByAttrs(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_20
    return-void
.end method
