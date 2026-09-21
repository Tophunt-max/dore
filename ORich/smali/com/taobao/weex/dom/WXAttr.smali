###### Class com.taobao.weex.dom.WXAttr (com.taobao.weex.dom.WXAttr)
.class public Lcom/taobao/weex/dom/WXAttr;
.super Lio/dcloud/feature/uniapp/dom/AbsAttr;
.source "WXAttr.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsAttr;-><init>(Ljava/util/Map;I)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/taobao/weex/dom/WXAttr;
    .registers 4

    .line 50
    new-instance v0, Lcom/taobao/weex/dom/WXAttr;

    invoke-direct {v0}, Lcom/taobao/weex/dom/WXAttr;-><init>()V

    .line 51
    invoke-virtual {p0}, Lcom/taobao/weex/dom/WXAttr;->getAttr()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->skipFilterPutAll(Ljava/util/Map;)V

    .line 52
    invoke-virtual {p0}, Lcom/taobao/weex/dom/WXAttr;->getBindingAttrs()Landroidx/collection/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 53
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-virtual {p0}, Lcom/taobao/weex/dom/WXAttr;->getBindingAttrs()Landroidx/collection/ArrayMap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/collection/ArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->setBindingAttrs(Landroidx/collection/ArrayMap;)V

    .line 55
    :cond_1e
    invoke-virtual {p0}, Lcom/taobao/weex/dom/WXAttr;->getStatement()Lcom/taobao/weex/dom/binding/WXStatement;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 56
    new-instance v1, Lcom/taobao/weex/dom/binding/WXStatement;

    invoke-virtual {p0}, Lcom/taobao/weex/dom/WXAttr;->getStatement()Lcom/taobao/weex/dom/binding/WXStatement;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taobao/weex/dom/binding/WXStatement;-><init>(Landroidx/collection/SimpleArrayMap;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->setStatement(Lcom/taobao/weex/dom/binding/WXStatement;)V

    :cond_30
    return-object v0
.end method

.method public bridge synthetic clone()Lio/dcloud/feature/uniapp/dom/AbsAttr;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/taobao/weex/dom/WXAttr;->clone()Lcom/taobao/weex/dom/WXAttr;

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

    .line 34
    invoke-virtual {p0}, Lcom/taobao/weex/dom/WXAttr;->clone()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    return-object v0
.end method
