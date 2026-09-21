###### Class io.dcloud.feature.uniapp.dom.AbsAttr (io.dcloud.feature.uniapp.dom.AbsAttr)
.class public abstract Lio/dcloud/feature/uniapp/dom/AbsAttr;
.super Ljava/lang/Object;
.source "AbsAttr.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2459d3c708082fb2L


# instance fields
.field private attr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mBindingAttrs:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mStatement:Lcom/taobao/weex/dom/binding/WXStatement;

.field private writeAttr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->attr:Ljava/util/Map;

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

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->attr:Ljava/util/Map;

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

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->attr:Ljava/util/Map;

    return-void
.end method

.method private addBindingAttrIfStatement(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 8

    .line 519
    sget-object v0, Lcom/taobao/weex/dom/binding/ELUtils;->EXCLUDES_BINDING:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_13

    aget-object v4, v0, v3

    .line 520
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    return v2

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 524
    :cond_13
    invoke-static {p2}, Lcom/taobao/weex/dom/binding/ELUtils;->isBinding(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2f

    .line 525
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->mBindingAttrs:Landroidx/collection/ArrayMap;

    if-nez v0, :cond_25

    .line 526
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->mBindingAttrs:Landroidx/collection/ArrayMap;

    .line 528
    :cond_25
    invoke-static {p2}, Lcom/taobao/weex/dom/binding/ELUtils;->bindingBlock(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 529
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->mBindingAttrs:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_2f
    const-string v0, "[[match]]"

    .line 532
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 533
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->mStatement:Lcom/taobao/weex/dom/binding/WXStatement;

    if-nez v0, :cond_42

    .line 534
    new-instance v0, Lcom/taobao/weex/dom/binding/WXStatement;

    invoke-direct {v0}, Lcom/taobao/weex/dom/binding/WXStatement;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->mStatement:Lcom/taobao/weex/dom/binding/WXStatement;

    :cond_42
    if-eqz p2, :cond_51

    .line 537
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->mStatement:Lcom/taobao/weex/dom/binding/WXStatement;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/taobao/weex/el/parse/Parser;->parse(Ljava/lang/String;)Lcom/taobao/weex/el/parse/Token;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/dom/binding/WXStatement;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_51
    return v1

    :cond_52
    const-string v0, "[[repeat]]"

    .line 542
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 543
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->mStatement:Lcom/taobao/weex/dom/binding/WXStatement;

    if-nez v0, :cond_65

    .line 544
    new-instance v0, Lcom/taobao/weex/dom/binding/WXStatement;

    invoke-direct {v0}, Lcom/taobao/weex/dom/binding/WXStatement;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->mStatement:Lcom/taobao/weex/dom/binding/WXStatement;

    .line 546
    :cond_65
    invoke-static {p2}, Lcom/taobao/weex/dom/binding/ELUtils;->vforBlock(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_71

    .line 548
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->mStatement:Lcom/taobao/weex/dom/binding/WXStatement;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/dom/binding/WXStatement;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_71
    const-string p2, "[[once]]"

    .line 553
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8d

    .line 554
    iget-object p2, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->mStatement:Lcom/taobao/weex/dom/binding/WXStatement;

    if-nez p2, :cond_84

    .line 555
    new-instance p2, Lcom/taobao/weex/dom/binding/WXStatement;

    invoke-direct {p2}, Lcom/taobao/weex/dom/binding/WXStatement;-><init>()V

    iput-object p2, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->mStatement:Lcom/taobao/weex/dom/binding/WXStatement;

    .line 557
    :cond_84
    iget-object p2, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->mStatement:Lcom/taobao/weex/dom/binding/WXStatement;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/taobao/weex/dom/binding/WXStatement;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8d
    return v2
.end method

.method private filterStatementsFromAttrs(Ljava/util/Map;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_49

    .line 496
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_49

    .line 499
    :cond_9
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 500
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 501
    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 502
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 503
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "@componentProps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 504
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/dom/binding/ELUtils;->bindingBlock(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 505
    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 508
    :cond_35
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->addBindingAttrIfStatement(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 509
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    :cond_49
    :goto_49
    return-object p1
.end method

.method public static getPrefix(Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "prefix"

    .line 90
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_d

    return-object v0

    .line 94
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSuffix(Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "suffix"

    .line 101
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_d

    return-object v0

    .line 105
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getValue(Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "value"

    .line 117
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_15

    const-string v1, "content"

    .line 119
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_15

    return-object v0

    .line 124
    :cond_15
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public autoPlay()Z
    .registers 4

    const-string v0, "autoPlay"

    .line 194
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 200
    :cond_a
    :try_start_a
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_13

    return v0

    :catch_13
    move-exception v0

    const-string v2, "[WXAttr] autoPlay:"

    .line 202
    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public canRecycled()Z
    .registers 4

    const-string v0, "recycle"

    .line 167
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 172
    :cond_a
    :try_start_a
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_13

    return v0

    :catch_13
    move-exception v0

    const-string v2, "[WXAttr] recycle:"

    .line 174
    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public clear()V
    .registers 2

    .line 388
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->attr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public abstract clone()Lio/dcloud/feature/uniapp/dom/AbsAttr;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->clone()Lio/dcloud/feature/uniapp/dom/AbsAttr;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    .line 393
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->attr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3

    .line 398
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->attr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->attr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 378
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->attr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 409
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->writeAttr:Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 411
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    .line 416
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->attr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAttr()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->attr:Ljava/util/Map;

    return-object v0
.end method

.method public getBindingAttrs()Landroidx/collection/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->mBindingAttrs:Landroidx/collection/ArrayMap;

    return-object v0
.end method

.method public getColumnCount()I
    .registers 4

    const-string v0, "columnCount"

    .line 314
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_a

    return v1

    .line 319
    :cond_a
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "auto"

    .line 320
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    return v1

    .line 325
    :cond_17
    :try_start_17
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1b} :catch_1f

    if-lez v0, :cond_1e

    move v1, v0

    :cond_1e
    return v1

    :catch_1f
    move-exception v0

    const-string v2, "[WXAttr] getColumnCount:"

    .line 328
    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public getColumnGap()F
    .registers 4

    const-string v0, "columnGap"

    .line 335
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/high16 v1, 0x42000000    # 32.0f

    if-nez v0, :cond_b

    return v1

    .line 340
    :cond_b
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "normal"

    .line 341
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    return v1

    .line 346
    :cond_18
    :try_start_18
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1c} :catch_25

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_22

    goto :goto_24

    :cond_22
    const/high16 v0, -0x40800000    # -1.0f

    :goto_24
    return v0

    :catch_25
    move-exception v0

    const-string v2, "[WXAttr] getColumnGap:"

    .line 349
    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public getColumnWidth()F
    .registers 4

    const-string v0, "columnWidth"

    .line 293
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_b

    return v1

    .line 298
    :cond_b
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "auto"

    .line 299
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    return v1

    .line 304
    :cond_18
    :try_start_18
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1c} :catch_24

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_22

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0

    :catch_24
    move-exception v0

    const-string v2, "[WXAttr] getColumnWidth:"

    .line 307
    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public getElevation(F)F
    .registers 4

    const-string v0, "elevation"

    .line 278
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 281
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 283
    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p1

    goto :goto_1f

    :cond_1b
    const/4 p1, 0x0

    goto :goto_1f

    :cond_1d
    const/high16 p1, 0x7fc00000    # Float.NaN

    :goto_1f
    return p1
.end method

.method public getImageQuality()Lcom/taobao/weex/dom/WXImageQuality;
    .registers 4

    const-string v0, "quality"

    .line 128
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_b

    :cond_9
    const-string v0, "imageQuality"

    :goto_b
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 129
    sget-object v1, Lcom/taobao/weex/dom/WXImageQuality;->AUTO:Lcom/taobao/weex/dom/WXImageQuality;

    if-eqz v0, :cond_2f

    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 133
    :try_start_1d
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/dom/WXImageQuality;->valueOf(Ljava/lang/String;)Lcom/taobao/weex/dom/WXImageQuality;

    move-result-object v1
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_27} :catch_28

    goto :goto_2f

    :catch_28
    const-string v0, "Image"

    const-string v2, "Invalid value image quality. Only low, normal, high, original are valid"

    .line 135
    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    :goto_2f
    return-object v1
.end method

.method public getImageSharpen()Lcom/taobao/weex/common/WXImageSharpen;
    .registers 4

    const-string v0, "sharpen"

    .line 142
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_e

    const-string v1, "imageSharpen"

    .line 144
    invoke-virtual {p0, v1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_e
    if-nez v1, :cond_13

    .line 147
    sget-object v0, Lcom/taobao/weex/common/WXImageSharpen;->UNSHARPEN:Lcom/taobao/weex/common/WXImageSharpen;

    return-object v0

    .line 149
    :cond_13
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    sget-object v2, Lcom/taobao/weex/common/WXImageSharpen;->UNSHARPEN:Lcom/taobao/weex/common/WXImageSharpen;

    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 152
    sget-object v2, Lcom/taobao/weex/common/WXImageSharpen;->SHARPEN:Lcom/taobao/weex/common/WXImageSharpen;

    :cond_21
    return-object v2
.end method

.method public getImageSrc()Ljava/lang/String;
    .registers 2

    const-string v0, "src"

    .line 159
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 163
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsRecycleImage()Z
    .registers 3

    const-string v0, "recycleImage"

    .line 243
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    .line 249
    :cond_a
    :try_start_a
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_13

    return v0

    :catch_13
    move-exception v0

    const-string v1, "[WXAttr] recycleImage:"

    .line 251
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutType()I
    .registers 6

    const-string v0, "layout"

    .line 355
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 361
    :cond_a
    :try_start_a
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x308b46

    if-eq v3, v4, :cond_28

    const v4, 0x2839c66a

    if-eq v3, v4, :cond_1e

    goto :goto_31

    :cond_1e
    const-string v3, "multi-column"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v2, 0x0

    goto :goto_31

    :cond_28
    const-string v3, "grid"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2e} :catch_3a

    if-eqz v0, :cond_31

    const/4 v2, 0x1

    :cond_31
    :goto_31
    if-eqz v2, :cond_38

    if-eq v2, v1, :cond_36

    return v1

    :cond_36
    const/4 v0, 0x2

    return v0

    :cond_38
    const/4 v0, 0x3

    return v0

    :catch_3a
    move-exception v0

    const-string v2, "[WXAttr] getLayoutType:"

    .line 370
    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public getLoadMoreOffset()Ljava/lang/String;
    .registers 2

    const-string v0, "loadmoreoffset"

    .line 223
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 227
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadMoreRetry()Ljava/lang/String;
    .registers 2

    const-string v0, "loadmoreretry"

    .line 215
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 219
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()I
    .registers 5

    .line 264
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->getScrollDirection()Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "horizontal"

    if-nez v1, :cond_14

    .line 266
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v2

    :cond_14
    const-string v0, "orientation"

    .line 270
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 271
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    return v2

    :cond_27
    const/4 v0, 0x1

    return v0
.end method

.method public getScope()Ljava/lang/String;
    .registers 2

    const-string v0, "scope"

    .line 208
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 212
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScrollDirection()Ljava/lang/String;
    .registers 2

    const-string v0, "scrollDirection"

    .line 256
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, "vertical"

    return-object v0

    .line 260
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatement()Lcom/taobao/weex/dom/binding/WXStatement;
    .registers 2

    .line 474
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->mStatement:Lcom/taobao/weex/dom/binding/WXStatement;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 383
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->attr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 421
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->attr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->attr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public mergeAttr()V
    .registers 3

    .line 568
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->writeAttr:Ljava/util/Map;

    if-eqz v0, :cond_c

    .line 569
    iget-object v1, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->attr:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 570
    iput-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->writeAttr:Ljava/util/Map;

    :cond_c
    return-void
.end method

.method public optString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 231
    invoke-virtual {p0, p1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 232
    invoke-virtual {p0, p1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 233
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 234
    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_11
    if-eqz p1, :cond_18

    .line 236
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_18
    const-string p1, ""

    return-object p1
.end method

.method public parseStatements()V
    .registers 2

    .line 487
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->attr:Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 488
    invoke-direct {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->filterStatementsFromAttrs(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->attr:Ljava/util/Map;

    :cond_a
    return-void
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 49
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 432
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->addBindingAttrIfStatement(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 435
    :cond_8
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->attr:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->writeAttr:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 442
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->writeAttr:Ljava/util/Map;

    .line 444
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->writeAttr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 449
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->attr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setBindingAttrs(Landroidx/collection/ArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 479
    iput-object p1, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->mBindingAttrs:Landroidx/collection/ArrayMap;

    return-void
.end method

.method public setStatement(Lcom/taobao/weex/dom/binding/WXStatement;)V
    .registers 2

    .line 483
    iput-object p1, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->mStatement:Lcom/taobao/weex/dom/binding/WXStatement;

    return-void
.end method

.method public showIndicators()Z
    .registers 4

    const-string v0, "showIndicators"

    .line 180
    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 186
    :cond_a
    :try_start_a
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_13

    return v0

    :catch_13
    move-exception v0

    const-string v2, "[WXAttr] showIndicators:"

    .line 188
    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public size()I
    .registers 2

    .line 454
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->attr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public skipFilterPutAll(Ljava/util/Map;)V
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

    .line 563
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->attr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 580
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->attr:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lio/dcloud/feature/uniapp/dom/AbsAttr;->attr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
