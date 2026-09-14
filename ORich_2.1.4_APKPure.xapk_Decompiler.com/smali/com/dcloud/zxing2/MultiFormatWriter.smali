###### Class com.dcloud.zxing2.MultiFormatWriter (com.dcloud.zxing2.MultiFormatWriter)
.class public final Lcom/dcloud/zxing2/MultiFormatWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dcloud/zxing2/Writer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/dcloud/zxing2/BarcodeFormat;II)Lcom/dcloud/zxing2/common/BitMatrix;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/dcloud/zxing2/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/dcloud/zxing2/BarcodeFormat;IILjava/util/Map;)Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/String;Lcom/dcloud/zxing2/BarcodeFormat;IILjava/util/Map;)Lcom/dcloud/zxing2/common/BitMatrix;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dcloud/zxing2/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/EncodeHintType;",
            "*>;)",
            "Lcom/dcloud/zxing2/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/dcloud/zxing2/MultiFormatWriter$1;->$SwitchMap$com$dcloud$zxing2$BarcodeFormat:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7a

    .line 43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No encoder available for format "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :pswitch_22
    new-instance v0, Lcom/dcloud/zxing2/aztec/AztecWriter;

    invoke-direct {v0}, Lcom/dcloud/zxing2/aztec/AztecWriter;-><init>()V

    goto :goto_6f

    .line 45
    :pswitch_28
    new-instance v0, Lcom/dcloud/zxing2/datamatrix/DataMatrixWriter;

    invoke-direct {v0}, Lcom/dcloud/zxing2/datamatrix/DataMatrixWriter;-><init>()V

    goto :goto_6f

    .line 46
    :pswitch_2e
    new-instance v0, Lcom/dcloud/zxing2/oned/CodaBarWriter;

    invoke-direct {v0}, Lcom/dcloud/zxing2/oned/CodaBarWriter;-><init>()V

    goto :goto_6f

    .line 47
    :pswitch_34
    new-instance v0, Lcom/dcloud/zxing2/pdf417/PDF417Writer;

    invoke-direct {v0}, Lcom/dcloud/zxing2/pdf417/PDF417Writer;-><init>()V

    goto :goto_6f

    .line 48
    :pswitch_3a
    new-instance v0, Lcom/dcloud/zxing2/oned/ITFWriter;

    invoke-direct {v0}, Lcom/dcloud/zxing2/oned/ITFWriter;-><init>()V

    goto :goto_6f

    .line 49
    :pswitch_40
    new-instance v0, Lcom/dcloud/zxing2/oned/Code128Writer;

    invoke-direct {v0}, Lcom/dcloud/zxing2/oned/Code128Writer;-><init>()V

    goto :goto_6f

    .line 50
    :pswitch_46
    new-instance v0, Lcom/dcloud/zxing2/oned/Code93Writer;

    invoke-direct {v0}, Lcom/dcloud/zxing2/oned/Code93Writer;-><init>()V

    goto :goto_6f

    .line 51
    :pswitch_4c
    new-instance v0, Lcom/dcloud/zxing2/oned/Code39Writer;

    invoke-direct {v0}, Lcom/dcloud/zxing2/oned/Code39Writer;-><init>()V

    goto :goto_6f

    .line 52
    :pswitch_52
    new-instance v0, Lcom/dcloud/zxing2/qrcode/QRCodeWriter;

    invoke-direct {v0}, Lcom/dcloud/zxing2/qrcode/QRCodeWriter;-><init>()V

    goto :goto_6f

    .line 53
    :pswitch_58
    new-instance v0, Lcom/dcloud/zxing2/oned/UPCAWriter;

    invoke-direct {v0}, Lcom/dcloud/zxing2/oned/UPCAWriter;-><init>()V

    goto :goto_6f

    .line 54
    :pswitch_5e
    new-instance v0, Lcom/dcloud/zxing2/oned/EAN13Writer;

    invoke-direct {v0}, Lcom/dcloud/zxing2/oned/EAN13Writer;-><init>()V

    goto :goto_6f

    .line 55
    :pswitch_64
    new-instance v0, Lcom/dcloud/zxing2/oned/UPCEWriter;

    invoke-direct {v0}, Lcom/dcloud/zxing2/oned/UPCEWriter;-><init>()V

    goto :goto_6f

    .line 56
    :pswitch_6a
    new-instance v0, Lcom/dcloud/zxing2/oned/EAN8Writer;

    invoke-direct {v0}, Lcom/dcloud/zxing2/oned/EAN8Writer;-><init>()V

    :goto_6f
    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 97
    invoke-interface/range {v1 .. v6}, Lcom/dcloud/zxing2/Writer;->encode(Ljava/lang/String;Lcom/dcloud/zxing2/BarcodeFormat;IILjava/util/Map;)Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object p1

    return-object p1

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_64
        :pswitch_5e
        :pswitch_58
        :pswitch_52
        :pswitch_4c
        :pswitch_46
        :pswitch_40
        :pswitch_3a
        :pswitch_34
        :pswitch_2e
        :pswitch_28
        :pswitch_22
    .end packed-switch
.end method

###### Class com.dcloud.zxing2.MultiFormatWriter.AnonymousClass1 (com.dcloud.zxing2.MultiFormatWriter$1)
.class synthetic Lcom/dcloud/zxing2/MultiFormatWriter$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/MultiFormatWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$dcloud$zxing2$BarcodeFormat:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/dcloud/zxing2/BarcodeFormat;->values()[Lcom/dcloud/zxing2/BarcodeFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dcloud/zxing2/MultiFormatWriter$1;->$SwitchMap$com$dcloud$zxing2$BarcodeFormat:[I

    :try_start_9
    sget-object v1, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_8:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/dcloud/zxing2/MultiFormatWriter$1;->$SwitchMap$com$dcloud$zxing2$BarcodeFormat:[I

    sget-object v1, Lcom/dcloud/zxing2/BarcodeFormat;->UPC_E:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/dcloud/zxing2/MultiFormatWriter$1;->$SwitchMap$com$dcloud$zxing2$BarcodeFormat:[I

    sget-object v1, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_13:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/dcloud/zxing2/MultiFormatWriter$1;->$SwitchMap$com$dcloud$zxing2$BarcodeFormat:[I

    sget-object v1, Lcom/dcloud/zxing2/BarcodeFormat;->UPC_A:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/dcloud/zxing2/MultiFormatWriter$1;->$SwitchMap$com$dcloud$zxing2$BarcodeFormat:[I

    sget-object v1, Lcom/dcloud/zxing2/BarcodeFormat;->QR_CODE:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/dcloud/zxing2/MultiFormatWriter$1;->$SwitchMap$com$dcloud$zxing2$BarcodeFormat:[I

    sget-object v1, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_39:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/dcloud/zxing2/MultiFormatWriter$1;->$SwitchMap$com$dcloud$zxing2$BarcodeFormat:[I

    sget-object v1, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_93:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lcom/dcloud/zxing2/MultiFormatWriter$1;->$SwitchMap$com$dcloud$zxing2$BarcodeFormat:[I

    sget-object v1, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_128:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lcom/dcloud/zxing2/MultiFormatWriter$1;->$SwitchMap$com$dcloud$zxing2$BarcodeFormat:[I

    sget-object v1, Lcom/dcloud/zxing2/BarcodeFormat;->ITF:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Lcom/dcloud/zxing2/MultiFormatWriter$1;->$SwitchMap$com$dcloud$zxing2$BarcodeFormat:[I

    sget-object v1, Lcom/dcloud/zxing2/BarcodeFormat;->PDF_417:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Lcom/dcloud/zxing2/MultiFormatWriter$1;->$SwitchMap$com$dcloud$zxing2$BarcodeFormat:[I

    sget-object v1, Lcom/dcloud/zxing2/BarcodeFormat;->CODABAR:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v0, Lcom/dcloud/zxing2/MultiFormatWriter$1;->$SwitchMap$com$dcloud$zxing2$BarcodeFormat:[I

    sget-object v1, Lcom/dcloud/zxing2/BarcodeFormat;->DATA_MATRIX:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    :try_start_90
    sget-object v0, Lcom/dcloud/zxing2/MultiFormatWriter$1;->$SwitchMap$com$dcloud$zxing2$BarcodeFormat:[I

    sget-object v1, Lcom/dcloud/zxing2/BarcodeFormat;->AZTEC:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    :catch_9c
    return-void
.end method
