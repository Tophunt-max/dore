###### Class com.dcloud.zxing2.oned.rss.expanded.BitArrayBuilder (com.dcloud.zxing2.oned.rss.expanded.BitArrayBuilder)
.class final Lcom/dcloud/zxing2/oned/rss/expanded/BitArrayBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildBitArray(Ljava/util/List;)Lcom/dcloud/zxing2/common/BitArray;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/dcloud/zxing2/common/BitArray;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v2}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    move-result-object v2

    if-nez v2, :cond_1b

    add-int/lit8 v0, v0, -0x1

    :cond_1b
    mul-int/lit8 v0, v0, 0xc

    .line 8
    new-instance v2, Lcom/dcloud/zxing2/common/BitArray;

    invoke-direct {v2, v0}, Lcom/dcloud/zxing2/common/BitArray;-><init>(I)V

    const/4 v0, 0x0

    .line 11
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    .line 12
    invoke-virtual {v3}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getValue()I

    move-result v3

    const/16 v4, 0xb

    const/16 v5, 0xb

    :goto_35
    if-ltz v5, :cond_44

    shl-int v6, v1, v5

    and-int/2addr v6, v3

    if-eqz v6, :cond_3f

    .line 15
    invoke-virtual {v2, v0}, Lcom/dcloud/zxing2/common/BitArray;->set(I)V

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_35

    :cond_44
    const/4 v3, 0x1

    .line 20
    :goto_45
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_8c

    .line 21
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    .line 23
    invoke-virtual {v5}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getValue()I

    move-result v6

    const/16 v7, 0xb

    :goto_5b
    if-ltz v7, :cond_6a

    shl-int v8, v1, v7

    and-int/2addr v8, v6

    if-eqz v8, :cond_65

    .line 26
    invoke-virtual {v2, v0}, Lcom/dcloud/zxing2/common/BitArray;->set(I)V

    :cond_65
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_5b

    .line 31
    :cond_6a
    invoke-virtual {v5}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    move-result-object v6

    if-eqz v6, :cond_89

    .line 32
    invoke-virtual {v5}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getValue()I

    move-result v5

    const/16 v6, 0xb

    :goto_7a
    if-ltz v6, :cond_89

    shl-int v7, v1, v6

    and-int/2addr v7, v5

    if-eqz v7, :cond_84

    .line 35
    invoke-virtual {v2, v0}, Lcom/dcloud/zxing2/common/BitArray;->set(I)V

    :cond_84
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_7a

    :cond_89
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    :cond_8c
    return-object v2
.end method
