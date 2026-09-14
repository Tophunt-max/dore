###### Class com.dcloud.zxing2.common.DecoderResult (com.dcloud.zxing2.common.DecoderResult)
.class public final Lcom/dcloud/zxing2/common/DecoderResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final byteSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final ecLevel:Ljava/lang/String;

.field private erasures:Ljava/lang/Integer;

.field private errorsCorrected:Ljava/lang/Integer;

.field private other:Ljava/lang/Object;

.field private final rawBytes:[B

.field private final structuredAppendParity:I

.field private final structuredAppendSequenceNumber:I

.field private final text:Ljava/lang/String;

.field public textCharset:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/dcloud/zxing2/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/dcloud/zxing2/common/DecoderResult;->rawBytes:[B

    .line 4
    iput-object p2, p0, Lcom/dcloud/zxing2/common/DecoderResult;->text:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/dcloud/zxing2/common/DecoderResult;->byteSegments:Ljava/util/List;

    .line 6
    iput-object p4, p0, Lcom/dcloud/zxing2/common/DecoderResult;->ecLevel:Ljava/lang/String;

    .line 7
    iput p6, p0, Lcom/dcloud/zxing2/common/DecoderResult;->structuredAppendParity:I

    .line 8
    iput p5, p0, Lcom/dcloud/zxing2/common/DecoderResult;->structuredAppendSequenceNumber:I

    return-void
.end method


# virtual methods
.method public getByteSegments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/common/DecoderResult;->byteSegments:Ljava/util/List;

    return-object v0
.end method

.method public getECLevel()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/common/DecoderResult;->ecLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getErasures()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/common/DecoderResult;->erasures:Ljava/lang/Integer;

    return-object v0
.end method

.method public getErrorsCorrected()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/common/DecoderResult;->errorsCorrected:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOther()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/common/DecoderResult;->other:Ljava/lang/Object;

    return-object v0
.end method

.method public getRawBytes()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/common/DecoderResult;->rawBytes:[B

    return-object v0
.end method

.method public getStructuredAppendParity()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/common/DecoderResult;->structuredAppendParity:I

    return v0
.end method

.method public getStructuredAppendSequenceNumber()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/common/DecoderResult;->structuredAppendSequenceNumber:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/common/DecoderResult;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hasStructuredAppend()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/common/DecoderResult;->structuredAppendParity:I

    if-ltz v0, :cond_a

    iget v0, p0, Lcom/dcloud/zxing2/common/DecoderResult;->structuredAppendSequenceNumber:I

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public setErasures(Ljava/lang/Integer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/zxing2/common/DecoderResult;->erasures:Ljava/lang/Integer;

    return-void
.end method

.method public setErrorsCorrected(Ljava/lang/Integer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/zxing2/common/DecoderResult;->errorsCorrected:Ljava/lang/Integer;

    return-void
.end method

.method public setOther(Ljava/lang/Object;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/zxing2/common/DecoderResult;->other:Ljava/lang/Object;

    return-void
.end method
