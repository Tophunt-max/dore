###### Class com.dcloud.zxing2.oned.MultiFormatUPCEANReader (com.dcloud.zxing2.oned.MultiFormatUPCEANReader)
.class public final Lcom/dcloud/zxing2/oned/MultiFormatUPCEANReader;
.super Lcom/dcloud/zxing2/oned/OneDReader;
.source "SourceFile"


# instance fields
.field private final readers:[Lcom/dcloud/zxing2/oned/UPCEANReader;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/DecodeHintType;",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/OneDReader;-><init>()V

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_f

    .line 3
    :cond_7
    sget-object v0, Lcom/dcloud/zxing2/DecodeHintType;->POSSIBLE_FORMATS:Lcom/dcloud/zxing2/DecodeHintType;

    .line 4
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 5
    :goto_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_57

    .line 7
    sget-object v1, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_13:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 8
    new-instance v1, Lcom/dcloud/zxing2/oned/EAN13Reader;

    invoke-direct {v1}, Lcom/dcloud/zxing2/oned/EAN13Reader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 9
    :cond_27
    sget-object v1, Lcom/dcloud/zxing2/BarcodeFormat;->UPC_A:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 10
    new-instance v1, Lcom/dcloud/zxing2/oned/UPCAReader;

    invoke-direct {v1}, Lcom/dcloud/zxing2/oned/UPCAReader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_37
    :goto_37
    sget-object v1, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_8:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 13
    new-instance v1, Lcom/dcloud/zxing2/oned/EAN8Reader;

    invoke-direct {v1}, Lcom/dcloud/zxing2/oned/EAN8Reader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_47
    sget-object v1, Lcom/dcloud/zxing2/BarcodeFormat;->UPC_E:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 16
    new-instance p1, Lcom/dcloud/zxing2/oned/UPCEReader;

    invoke-direct {p1}, Lcom/dcloud/zxing2/oned/UPCEReader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_57
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_75

    .line 20
    new-instance p1, Lcom/dcloud/zxing2/oned/EAN13Reader;

    invoke-direct {p1}, Lcom/dcloud/zxing2/oned/EAN13Reader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance p1, Lcom/dcloud/zxing2/oned/EAN8Reader;

    invoke-direct {p1}, Lcom/dcloud/zxing2/oned/EAN8Reader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance p1, Lcom/dcloud/zxing2/oned/UPCEReader;

    invoke-direct {p1}, Lcom/dcloud/zxing2/oned/UPCEReader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_75
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Lcom/dcloud/zxing2/oned/UPCEANReader;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/dcloud/zxing2/oned/UPCEANReader;

    iput-object p1, p0, Lcom/dcloud/zxing2/oned/MultiFormatUPCEANReader;->readers:[Lcom/dcloud/zxing2/oned/UPCEANReader;

    return-void
.end method


# virtual methods
.method public decodeRow(ILcom/dcloud/zxing2/common/BitArray;Ljava/util/Map;)Lcom/dcloud/zxing2/Result;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/dcloud/zxing2/common/BitArray;",
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

    .line 1
    invoke-static {p2}, Lcom/dcloud/zxing2/oned/UPCEANReader;->findStartGuardPattern(Lcom/dcloud/zxing2/common/BitArray;)[I

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/MultiFormatUPCEANReader;->readers:[Lcom/dcloud/zxing2/oned/UPCEANReader;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v2, :cond_67

    aget-object v5, v1, v4

    .line 5
    :try_start_d
    invoke-virtual {v5, p1, p2, v0, p3}, Lcom/dcloud/zxing2/oned/UPCEANReader;->decodeRow(ILcom/dcloud/zxing2/common/BitArray;[ILjava/util/Map;)Lcom/dcloud/zxing2/Result;

    move-result-object p1
    :try_end_11
    .catch Lcom/dcloud/zxing2/ReaderException; {:try_start_d .. :try_end_11} :catch_64

    .line 22
    invoke-virtual {p1}, Lcom/dcloud/zxing2/Result;->getBarcodeFormat()Lcom/dcloud/zxing2/BarcodeFormat;

    move-result-object p2

    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_13:Lcom/dcloud/zxing2/BarcodeFormat;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_28

    .line 23
    invoke-virtual {p1}, Lcom/dcloud/zxing2/Result;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x30

    if-ne p2, v0, :cond_28

    const/4 p2, 0x1

    goto :goto_29

    :cond_28
    const/4 p2, 0x0

    :goto_29
    if-nez p3, :cond_2d

    const/4 p3, 0x0

    goto :goto_35

    .line 25
    :cond_2d
    sget-object v0, Lcom/dcloud/zxing2/DecodeHintType;->POSSIBLE_FORMATS:Lcom/dcloud/zxing2/DecodeHintType;

    .line 26
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    :goto_35
    if-eqz p3, :cond_3f

    .line 27
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->UPC_A:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-interface {p3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_40

    :cond_3f
    const/4 v3, 0x1

    :cond_40
    if-eqz p2, :cond_63

    if-eqz v3, :cond_63

    .line 31
    new-instance p2, Lcom/dcloud/zxing2/Result;

    invoke-virtual {p1}, Lcom/dcloud/zxing2/Result;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 32
    invoke-virtual {p1}, Lcom/dcloud/zxing2/Result;->getRawBytes()[B

    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lcom/dcloud/zxing2/Result;->getResultPoints()[Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v1

    sget-object v2, Lcom/dcloud/zxing2/BarcodeFormat;->UPC_A:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-direct {p2, p3, v0, v1, v2}, Lcom/dcloud/zxing2/Result;-><init>(Ljava/lang/String;[B[Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/BarcodeFormat;)V

    .line 35
    invoke-virtual {p1}, Lcom/dcloud/zxing2/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/dcloud/zxing2/Result;->putAllMetadata(Ljava/util/Map;)V

    return-object p2

    :cond_63
    return-object p1

    :catch_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 41
    :cond_67
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method public reset()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/MultiFormatUPCEANReader;->readers:[Lcom/dcloud/zxing2/oned/UPCEANReader;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3}, Lcom/dcloud/zxing2/Reader;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method
