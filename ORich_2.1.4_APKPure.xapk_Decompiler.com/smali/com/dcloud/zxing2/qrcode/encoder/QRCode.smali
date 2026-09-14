###### Class com.dcloud.zxing2.qrcode.encoder.QRCode (com.dcloud.zxing2.qrcode.encoder.QRCode)
.class public final Lcom/dcloud/zxing2/qrcode/encoder/QRCode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NUM_MASK_PATTERNS:I = 0x8


# instance fields
.field private ecLevel:Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;

.field private maskPattern:I

.field private matrix:Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;

.field private mode:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

.field private version:Lcom/dcloud/zxing2/qrcode/decoder/Version;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/dcloud/zxing2/qrcode/encoder/QRCode;->maskPattern:I

    return-void
.end method

.method public static isValidMaskPattern(I)Z
    .registers 2

    if-ltz p0, :cond_8

    const/16 v0, 0x8

    if-ge p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method


# virtual methods
.method public getECLevel()Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/encoder/QRCode;->ecLevel:Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;

    return-object v0
.end method

.method public getMaskPattern()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/qrcode/encoder/QRCode;->maskPattern:I

    return v0
.end method

.method public getMatrix()Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/encoder/QRCode;->matrix:Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;

    return-object v0
.end method

.method public getMode()Lcom/dcloud/zxing2/qrcode/decoder/Mode;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/encoder/QRCode;->mode:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    return-object v0
.end method

.method public getVersion()Lcom/dcloud/zxing2/qrcode/decoder/Version;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/encoder/QRCode;->version:Lcom/dcloud/zxing2/qrcode/decoder/Version;

    return-object v0
.end method

.method public setECLevel(Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/zxing2/qrcode/encoder/QRCode;->ecLevel:Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;

    return-void
.end method

.method public setMaskPattern(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/dcloud/zxing2/qrcode/encoder/QRCode;->maskPattern:I

    return-void
.end method

.method public setMatrix(Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/zxing2/qrcode/encoder/QRCode;->matrix:Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;

    return-void
.end method

.method public setMode(Lcom/dcloud/zxing2/qrcode/decoder/Mode;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/zxing2/qrcode/encoder/QRCode;->mode:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    return-void
.end method

.method public setVersion(Lcom/dcloud/zxing2/qrcode/decoder/Version;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/zxing2/qrcode/encoder/QRCode;->version:Lcom/dcloud/zxing2/qrcode/decoder/Version;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "<<\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode: "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/dcloud/zxing2/qrcode/encoder/QRCode;->mode:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n ecLevel: "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lcom/dcloud/zxing2/qrcode/encoder/QRCode;->ecLevel:Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n version: "

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Lcom/dcloud/zxing2/qrcode/encoder/QRCode;->version:Lcom/dcloud/zxing2/qrcode/decoder/Version;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n maskPattern: "

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget v1, p0, Lcom/dcloud/zxing2/qrcode/encoder/QRCode;->maskPattern:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/dcloud/zxing2/qrcode/encoder/QRCode;->matrix:Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;

    if-nez v1, :cond_3e

    const-string v1, "\n matrix: null\n"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    :cond_3e
    const-string v1, "\n matrix:\n"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v1, p0, Lcom/dcloud/zxing2/qrcode/encoder/QRCode;->matrix:Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_48
    const-string v1, ">>\n"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
