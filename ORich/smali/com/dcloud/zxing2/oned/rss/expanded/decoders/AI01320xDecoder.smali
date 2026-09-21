###### Class com.dcloud.zxing2.oned.rss.expanded.decoders.AI01320xDecoder (com.dcloud.zxing2.oned.rss.expanded.decoders.AI01320xDecoder)
.class final Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI01320xDecoder;
.super Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI013x0xDecoder;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/dcloud/zxing2/common/BitArray;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI013x0xDecoder;-><init>(Lcom/dcloud/zxing2/common/BitArray;)V

    return-void
.end method


# virtual methods
.method protected addWeightCode(Ljava/lang/StringBuilder;I)V
    .registers 4

    const/16 v0, 0x2710

    if-ge p2, v0, :cond_a

    const-string p2, "(3202)"

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_a
    const-string p2, "(3203)"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_f
    return-void
.end method

.method protected checkWeight(I)I
    .registers 3

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_5

    return p1

    :cond_5
    sub-int/2addr p1, v0

    return p1
.end method
