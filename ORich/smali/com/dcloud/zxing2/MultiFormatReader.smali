###### Class com.dcloud.zxing2.MultiFormatReader (com.dcloud.zxing2.MultiFormatReader)
.class public final Lcom/dcloud/zxing2/MultiFormatReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dcloud/zxing2/Reader;


# instance fields
.field private hints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/DecodeHintType;",
            "*>;"
        }
    .end annotation
.end field

.field private readers:[Lcom/dcloud/zxing2/Reader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decodeInternal(Lcom/dcloud/zxing2/BinaryBitmap;)Lcom/dcloud/zxing2/Result;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/MultiFormatReader;->readers:[Lcom/dcloud/zxing2/Reader;

    if-eqz v0, :cond_14

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 4
    :try_start_a
    iget-object v4, p0, Lcom/dcloud/zxing2/MultiFormatReader;->hints:Ljava/util/Map;

    invoke-interface {v3, p1, v4}, Lcom/dcloud/zxing2/Reader;->decode(Lcom/dcloud/zxing2/BinaryBitmap;Ljava/util/Map;)Lcom/dcloud/zxing2/Result;

    move-result-object p1
    :try_end_10
    .catch Lcom/dcloud/zxing2/ReaderException; {:try_start_a .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 10
    :cond_14
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public decode(Lcom/dcloud/zxing2/BinaryBitmap;)Lcom/dcloud/zxing2/Result;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/dcloud/zxing2/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/MultiFormatReader;->decodeInternal(Lcom/dcloud/zxing2/BinaryBitmap;)Lcom/dcloud/zxing2/Result;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lcom/dcloud/zxing2/BinaryBitmap;Ljava/util/Map;)Lcom/dcloud/zxing2/Result;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dcloud/zxing2/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/DecodeHintType;",
            "*>;)",
            "Lcom/dcloud/zxing2/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p2}, Lcom/dcloud/zxing2/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/MultiFormatReader;->decodeInternal(Lcom/dcloud/zxing2/BinaryBitmap;)Lcom/dcloud/zxing2/Result;

    move-result-object p1

    return-object p1
.end method

.method public decodeWithState(Lcom/dcloud/zxing2/BinaryBitmap;)Lcom/dcloud/zxing2/Result;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/MultiFormatReader;->readers:[Lcom/dcloud/zxing2/Reader;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/dcloud/zxing2/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 4
    :cond_8
    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/MultiFormatReader;->decodeInternal(Lcom/dcloud/zxing2/BinaryBitmap;)Lcom/dcloud/zxing2/Result;

    move-result-object p1

    return-object p1
.end method

.method public reset()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/MultiFormatReader;->readers:[Lcom/dcloud/zxing2/Reader;

    if-eqz v0, :cond_10

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3}, Lcom/dcloud/zxing2/Reader;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_10
    return-void
.end method

.method public setHints(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/DecodeHintType;",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/dcloud/zxing2/MultiFormatReader;->hints:Ljava/util/Map;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_10

    .line 3
    sget-object v2, Lcom/dcloud/zxing2/DecodeHintType;->TRY_HARDER:Lcom/dcloud/zxing2/DecodeHintType;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    if-nez p1, :cond_15

    const/4 v3, 0x0

    goto :goto_1d

    .line 5
    :cond_15
    sget-object v3, Lcom/dcloud/zxing2/DecodeHintType;->POSSIBLE_FORMATS:Lcom/dcloud/zxing2/DecodeHintType;

    .line 6
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 7
    :goto_1d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_e6

    .line 9
    sget-object v5, Lcom/dcloud/zxing2/BarcodeFormat;->UPC_A:Lcom/dcloud/zxing2/BarcodeFormat;

    .line 10
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e

    sget-object v5, Lcom/dcloud/zxing2/BarcodeFormat;->UPC_E:Lcom/dcloud/zxing2/BarcodeFormat;

    .line 11
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e

    sget-object v5, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_13:Lcom/dcloud/zxing2/BarcodeFormat;

    .line 12
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e

    sget-object v5, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_8:Lcom/dcloud/zxing2/BarcodeFormat;

    .line 13
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e

    sget-object v5, Lcom/dcloud/zxing2/BarcodeFormat;->CODABAR:Lcom/dcloud/zxing2/BarcodeFormat;

    .line 14
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e

    sget-object v5, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_39:Lcom/dcloud/zxing2/BarcodeFormat;

    .line 15
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e

    sget-object v5, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_93:Lcom/dcloud/zxing2/BarcodeFormat;

    .line 16
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e

    sget-object v5, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_128:Lcom/dcloud/zxing2/BarcodeFormat;

    .line 17
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e

    sget-object v5, Lcom/dcloud/zxing2/BarcodeFormat;->ITF:Lcom/dcloud/zxing2/BarcodeFormat;

    .line 18
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e

    sget-object v5, Lcom/dcloud/zxing2/BarcodeFormat;->RSS_14:Lcom/dcloud/zxing2/BarcodeFormat;

    .line 19
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e

    sget-object v5, Lcom/dcloud/zxing2/BarcodeFormat;->RSS_EXPANDED:Lcom/dcloud/zxing2/BarcodeFormat;

    .line 20
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    goto :goto_7e

    :cond_7d
    const/4 v0, 0x0

    :cond_7e
    :goto_7e
    if-eqz v0, :cond_8a

    if-nez v2, :cond_8a

    .line 23
    new-instance v1, Lcom/dcloud/zxing2/oned/MultiFormatOneDReader;

    invoke-direct {v1, p1}, Lcom/dcloud/zxing2/oned/MultiFormatOneDReader;-><init>(Ljava/util/Map;)V

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_8a
    sget-object v1, Lcom/dcloud/zxing2/BarcodeFormat;->QR_CODE:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 26
    new-instance v1, Lcom/dcloud/zxing2/qrcode/QRCodeReader;

    invoke-direct {v1}, Lcom/dcloud/zxing2/qrcode/QRCodeReader;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_9a
    sget-object v1, Lcom/dcloud/zxing2/BarcodeFormat;->DATA_MATRIX:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 29
    new-instance v1, Lcom/dcloud/zxing2/datamatrix/DataMatrixReader;

    invoke-direct {v1}, Lcom/dcloud/zxing2/datamatrix/DataMatrixReader;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_aa
    sget-object v1, Lcom/dcloud/zxing2/BarcodeFormat;->AZTEC:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 32
    new-instance v1, Lcom/dcloud/zxing2/aztec/AztecReader;

    invoke-direct {v1}, Lcom/dcloud/zxing2/aztec/AztecReader;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_ba
    sget-object v1, Lcom/dcloud/zxing2/BarcodeFormat;->PDF_417:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 35
    new-instance v1, Lcom/dcloud/zxing2/pdf417/PDF417Reader;

    invoke-direct {v1}, Lcom/dcloud/zxing2/pdf417/PDF417Reader;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_ca
    sget-object v1, Lcom/dcloud/zxing2/BarcodeFormat;->MAXICODE:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_da

    .line 38
    new-instance v1, Lcom/dcloud/zxing2/maxicode/MaxiCodeReader;

    invoke-direct {v1}, Lcom/dcloud/zxing2/maxicode/MaxiCodeReader;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_da
    if-eqz v0, :cond_e6

    if-eqz v2, :cond_e6

    .line 42
    new-instance v0, Lcom/dcloud/zxing2/oned/MultiFormatOneDReader;

    invoke-direct {v0, p1}, Lcom/dcloud/zxing2/oned/MultiFormatOneDReader;-><init>(Ljava/util/Map;)V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_e6
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_128

    if-nez v2, :cond_f6

    .line 47
    new-instance v0, Lcom/dcloud/zxing2/oned/MultiFormatOneDReader;

    invoke-direct {v0, p1}, Lcom/dcloud/zxing2/oned/MultiFormatOneDReader;-><init>(Ljava/util/Map;)V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_f6
    new-instance v0, Lcom/dcloud/zxing2/qrcode/QRCodeReader;

    invoke-direct {v0}, Lcom/dcloud/zxing2/qrcode/QRCodeReader;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v0, Lcom/dcloud/zxing2/datamatrix/DataMatrixReader;

    invoke-direct {v0}, Lcom/dcloud/zxing2/datamatrix/DataMatrixReader;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Lcom/dcloud/zxing2/aztec/AztecReader;

    invoke-direct {v0}, Lcom/dcloud/zxing2/aztec/AztecReader;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v0, Lcom/dcloud/zxing2/pdf417/PDF417Reader;

    invoke-direct {v0}, Lcom/dcloud/zxing2/pdf417/PDF417Reader;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v0, Lcom/dcloud/zxing2/maxicode/MaxiCodeReader;

    invoke-direct {v0}, Lcom/dcloud/zxing2/maxicode/MaxiCodeReader;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_128

    .line 57
    new-instance v0, Lcom/dcloud/zxing2/oned/MultiFormatOneDReader;

    invoke-direct {v0, p1}, Lcom/dcloud/zxing2/oned/MultiFormatOneDReader;-><init>(Ljava/util/Map;)V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_128
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Lcom/dcloud/zxing2/Reader;

    invoke-interface {v4, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/dcloud/zxing2/Reader;

    iput-object p1, p0, Lcom/dcloud/zxing2/MultiFormatReader;->readers:[Lcom/dcloud/zxing2/Reader;

    return-void
.end method
