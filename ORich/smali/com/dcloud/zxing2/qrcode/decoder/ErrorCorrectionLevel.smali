###### Class com.dcloud.zxing2.qrcode.decoder.ErrorCorrectionLevel (com.dcloud.zxing2.qrcode.decoder.ErrorCorrectionLevel)
.class public final enum Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;

.field private static final FOR_BITS:[Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;

.field public static final enum H:Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;

.field public static final enum L:Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;

.field public static final enum M:Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;

.field public static final enum Q:Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;


# instance fields
.field private final bits:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 1
    new-instance v0, Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;

    const-string v1, "L"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;

    .line 3
    new-instance v1, Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;

    const-string v4, "M"

    invoke-direct {v1, v4, v3, v2}, Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;->M:Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;

    .line 5
    new-instance v4, Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;

    const-string v5, "Q"

    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-direct {v4, v5, v6, v7}, Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;->Q:Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;

    .line 7
    new-instance v5, Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;

    const-string v8, "H"

    invoke-direct {v5, v8, v7, v6}, Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;

    const/4 v8, 0x4

    new-array v9, v8, [Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v6

    aput-object v5, v9, v7

    .line 8
    sput-object v9, Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;->$VALUES:[Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;

    new-array v8, v8, [Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;

    aput-object v1, v8, v2

    aput-object v0, v8, v3

    aput-object v5, v8, v6

    aput-object v4, v8, v7

    .line 19
    sput-object v8, Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;->FOR_BITS:[Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;->bits:I

    return-void
.end method

.method public static forBits(I)Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;
    .registers 3

    if-ltz p0, :cond_a

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;->FOR_BITS:[Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;

    array-length v1, v0

    if-ge p0, v1, :cond_a

    .line 4
    aget-object p0, v0, p0

    return-object p0

    .line 5
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;
    .registers 2

    .line 1
    const-class v0, Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;

    return-object p0
.end method

.method public static values()[Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;
    .registers 1

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;->$VALUES:[Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v0}, [Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;

    return-object v0
.end method


# virtual methods
.method public getBits()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;->bits:I

    return v0
.end method
