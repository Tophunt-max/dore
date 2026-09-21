###### Class com.dcloud.zxing2.ResultMetadataType (com.dcloud.zxing2.ResultMetadataType)
.class public final enum Lcom/dcloud/zxing2/ResultMetadataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dcloud/zxing2/ResultMetadataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dcloud/zxing2/ResultMetadataType;

.field public static final enum BYTE_SEGMENTS:Lcom/dcloud/zxing2/ResultMetadataType;

.field public static final enum ERROR_CORRECTION_LEVEL:Lcom/dcloud/zxing2/ResultMetadataType;

.field public static final enum ISSUE_NUMBER:Lcom/dcloud/zxing2/ResultMetadataType;

.field public static final enum ORIENTATION:Lcom/dcloud/zxing2/ResultMetadataType;

.field public static final enum OTHER:Lcom/dcloud/zxing2/ResultMetadataType;

.field public static final enum PDF417_EXTRA_METADATA:Lcom/dcloud/zxing2/ResultMetadataType;

.field public static final enum POSSIBLE_COUNTRY:Lcom/dcloud/zxing2/ResultMetadataType;

.field public static final enum STRUCTURED_APPEND_PARITY:Lcom/dcloud/zxing2/ResultMetadataType;

.field public static final enum STRUCTURED_APPEND_SEQUENCE:Lcom/dcloud/zxing2/ResultMetadataType;

.field public static final enum SUGGESTED_PRICE:Lcom/dcloud/zxing2/ResultMetadataType;

.field public static final enum UPC_EAN_EXTENSION:Lcom/dcloud/zxing2/ResultMetadataType;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Lcom/dcloud/zxing2/ResultMetadataType;

    const-string v1, "OTHER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dcloud/zxing2/ResultMetadataType;->OTHER:Lcom/dcloud/zxing2/ResultMetadataType;

    .line 10
    new-instance v1, Lcom/dcloud/zxing2/ResultMetadataType;

    const-string v3, "ORIENTATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dcloud/zxing2/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dcloud/zxing2/ResultMetadataType;->ORIENTATION:Lcom/dcloud/zxing2/ResultMetadataType;

    .line 21
    new-instance v3, Lcom/dcloud/zxing2/ResultMetadataType;

    const-string v5, "BYTE_SEGMENTS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dcloud/zxing2/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dcloud/zxing2/ResultMetadataType;->BYTE_SEGMENTS:Lcom/dcloud/zxing2/ResultMetadataType;

    .line 27
    new-instance v5, Lcom/dcloud/zxing2/ResultMetadataType;

    const-string v7, "ERROR_CORRECTION_LEVEL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/dcloud/zxing2/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dcloud/zxing2/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/dcloud/zxing2/ResultMetadataType;

    .line 32
    new-instance v7, Lcom/dcloud/zxing2/ResultMetadataType;

    const-string v9, "ISSUE_NUMBER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/dcloud/zxing2/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dcloud/zxing2/ResultMetadataType;->ISSUE_NUMBER:Lcom/dcloud/zxing2/ResultMetadataType;

    .line 38
    new-instance v9, Lcom/dcloud/zxing2/ResultMetadataType;

    const-string v11, "SUGGESTED_PRICE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/dcloud/zxing2/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/dcloud/zxing2/ResultMetadataType;->SUGGESTED_PRICE:Lcom/dcloud/zxing2/ResultMetadataType;

    .line 44
    new-instance v11, Lcom/dcloud/zxing2/ResultMetadataType;

    const-string v13, "POSSIBLE_COUNTRY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/dcloud/zxing2/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/dcloud/zxing2/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/dcloud/zxing2/ResultMetadataType;

    .line 49
    new-instance v13, Lcom/dcloud/zxing2/ResultMetadataType;

    const-string v15, "UPC_EAN_EXTENSION"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/dcloud/zxing2/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/dcloud/zxing2/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/dcloud/zxing2/ResultMetadataType;

    .line 54
    new-instance v15, Lcom/dcloud/zxing2/ResultMetadataType;

    const-string v14, "PDF417_EXTRA_METADATA"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/dcloud/zxing2/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/dcloud/zxing2/ResultMetadataType;->PDF417_EXTRA_METADATA:Lcom/dcloud/zxing2/ResultMetadataType;

    .line 60
    new-instance v14, Lcom/dcloud/zxing2/ResultMetadataType;

    const-string v12, "STRUCTURED_APPEND_SEQUENCE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/dcloud/zxing2/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/dcloud/zxing2/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/dcloud/zxing2/ResultMetadataType;

    .line 66
    new-instance v12, Lcom/dcloud/zxing2/ResultMetadataType;

    const-string v10, "STRUCTURED_APPEND_PARITY"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/dcloud/zxing2/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/dcloud/zxing2/ResultMetadataType;->STRUCTURED_APPEND_PARITY:Lcom/dcloud/zxing2/ResultMetadataType;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/dcloud/zxing2/ResultMetadataType;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    .line 67
    sput-object v10, Lcom/dcloud/zxing2/ResultMetadataType;->$VALUES:[Lcom/dcloud/zxing2/ResultMetadataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dcloud/zxing2/ResultMetadataType;
    .registers 2

    .line 1
    const-class v0, Lcom/dcloud/zxing2/ResultMetadataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dcloud/zxing2/ResultMetadataType;

    return-object p0
.end method

.method public static values()[Lcom/dcloud/zxing2/ResultMetadataType;
    .registers 1

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/ResultMetadataType;->$VALUES:[Lcom/dcloud/zxing2/ResultMetadataType;

    invoke-virtual {v0}, [Lcom/dcloud/zxing2/ResultMetadataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dcloud/zxing2/ResultMetadataType;

    return-object v0
.end method
