###### Class com.dcloud.zxing2.pdf417.decoder.BarcodeMetadata (com.dcloud.zxing2.pdf417.decoder.BarcodeMetadata)
.class final Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final columnCount:I

.field private final errorCorrectionLevel:I

.field private final rowCount:I

.field private final rowCountLowerPart:I

.field private final rowCountUpperPart:I


# direct methods
.method constructor <init>(IIII)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->columnCount:I

    .line 3
    iput p4, p0, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->errorCorrectionLevel:I

    .line 4
    iput p2, p0, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->rowCountUpperPart:I

    .line 5
    iput p3, p0, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->rowCountLowerPart:I

    add-int/2addr p2, p3

    .line 6
    iput p2, p0, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->rowCount:I

    return-void
.end method


# virtual methods
.method getColumnCount()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->columnCount:I

    return v0
.end method

.method getErrorCorrectionLevel()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->errorCorrectionLevel:I

    return v0
.end method

.method getRowCount()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->rowCount:I

    return v0
.end method

.method getRowCountLowerPart()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->rowCountLowerPart:I

    return v0
.end method

.method getRowCountUpperPart()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->rowCountUpperPart:I

    return v0
.end method
