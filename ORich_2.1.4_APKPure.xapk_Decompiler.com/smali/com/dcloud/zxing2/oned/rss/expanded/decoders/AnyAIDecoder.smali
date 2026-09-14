###### Class com.dcloud.zxing2.oned.rss.expanded.decoders.AnyAIDecoder (com.dcloud.zxing2.oned.rss.expanded.decoders.AnyAIDecoder)
.class final Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AnyAIDecoder;
.super Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AbstractExpandedDecoder;
.source "SourceFile"


# static fields
.field private static final HEADER_SIZE:I = 0x5


# direct methods
.method constructor <init>(Lcom/dcloud/zxing2/common/BitArray;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AbstractExpandedDecoder;-><init>(Lcom/dcloud/zxing2/common/BitArray;)V

    return-void
.end method


# virtual methods
.method public parseInformation()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;,
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AbstractExpandedDecoder;->getGeneralDecoder()Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeAllCodes(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
