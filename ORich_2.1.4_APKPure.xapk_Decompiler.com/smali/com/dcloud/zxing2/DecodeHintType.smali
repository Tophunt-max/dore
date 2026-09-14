###### Class com.dcloud.zxing2.DecodeHintType (com.dcloud.zxing2.DecodeHintType)
.class public final enum Lcom/dcloud/zxing2/DecodeHintType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dcloud/zxing2/DecodeHintType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dcloud/zxing2/DecodeHintType;

.field public static final enum ALLOWED_EAN_EXTENSIONS:Lcom/dcloud/zxing2/DecodeHintType;

.field public static final enum ALLOWED_LENGTHS:Lcom/dcloud/zxing2/DecodeHintType;

.field public static final enum ASSUME_CODE_39_CHECK_DIGIT:Lcom/dcloud/zxing2/DecodeHintType;

.field public static final enum ASSUME_GS1:Lcom/dcloud/zxing2/DecodeHintType;

.field public static final enum CHARACTER_SET:Lcom/dcloud/zxing2/DecodeHintType;

.field public static final enum NEED_RESULT_POINT_CALLBACK:Lcom/dcloud/zxing2/DecodeHintType;

.field public static final enum OTHER:Lcom/dcloud/zxing2/DecodeHintType;

.field public static final enum POSSIBLE_FORMATS:Lcom/dcloud/zxing2/DecodeHintType;

.field public static final enum PURE_BARCODE:Lcom/dcloud/zxing2/DecodeHintType;

.field public static final enum RETURN_CODABAR_START_END:Lcom/dcloud/zxing2/DecodeHintType;

.field public static final enum TRY_HARDER:Lcom/dcloud/zxing2/DecodeHintType;

.field public static final enum autoDecodeCharset:Lcom/dcloud/zxing2/DecodeHintType;


# instance fields
.field private final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 1
    const-class v0, [I

    new-instance v1, Lcom/dcloud/zxing2/DecodeHintType;

    const-class v2, Ljava/lang/Object;

    const-string v3, "OTHER"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/dcloud/zxing2/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v1, Lcom/dcloud/zxing2/DecodeHintType;->OTHER:Lcom/dcloud/zxing2/DecodeHintType;

    .line 7
    new-instance v2, Lcom/dcloud/zxing2/DecodeHintType;

    const-class v3, Ljava/lang/Void;

    const-string v5, "PURE_BARCODE"

    const/4 v6, 0x1

    invoke-direct {v2, v5, v6, v3}, Lcom/dcloud/zxing2/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v2, Lcom/dcloud/zxing2/DecodeHintType;->PURE_BARCODE:Lcom/dcloud/zxing2/DecodeHintType;

    .line 13
    new-instance v3, Lcom/dcloud/zxing2/DecodeHintType;

    const-class v5, Ljava/util/List;

    const-string v7, "POSSIBLE_FORMATS"

    const/4 v8, 0x2

    invoke-direct {v3, v7, v8, v5}, Lcom/dcloud/zxing2/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v3, Lcom/dcloud/zxing2/DecodeHintType;->POSSIBLE_FORMATS:Lcom/dcloud/zxing2/DecodeHintType;

    .line 19
    new-instance v5, Lcom/dcloud/zxing2/DecodeHintType;

    const-class v7, Ljava/lang/Void;

    const-string v9, "TRY_HARDER"

    const/4 v10, 0x3

    invoke-direct {v5, v9, v10, v7}, Lcom/dcloud/zxing2/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v5, Lcom/dcloud/zxing2/DecodeHintType;->TRY_HARDER:Lcom/dcloud/zxing2/DecodeHintType;

    .line 24
    new-instance v7, Lcom/dcloud/zxing2/DecodeHintType;

    const-class v9, Ljava/lang/String;

    const-string v11, "CHARACTER_SET"

    const/4 v12, 0x4

    invoke-direct {v7, v11, v12, v9}, Lcom/dcloud/zxing2/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v7, Lcom/dcloud/zxing2/DecodeHintType;->CHARACTER_SET:Lcom/dcloud/zxing2/DecodeHintType;

    .line 27
    new-instance v9, Lcom/dcloud/zxing2/DecodeHintType;

    const-class v11, Ljava/lang/Boolean;

    const-string v13, "autoDecodeCharset"

    const/4 v14, 0x5

    invoke-direct {v9, v13, v14, v11}, Lcom/dcloud/zxing2/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v9, Lcom/dcloud/zxing2/DecodeHintType;->autoDecodeCharset:Lcom/dcloud/zxing2/DecodeHintType;

    .line 34
    new-instance v11, Lcom/dcloud/zxing2/DecodeHintType;

    const-string v13, "ALLOWED_LENGTHS"

    const/4 v15, 0x6

    invoke-direct {v11, v13, v15, v0}, Lcom/dcloud/zxing2/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v11, Lcom/dcloud/zxing2/DecodeHintType;->ALLOWED_LENGTHS:Lcom/dcloud/zxing2/DecodeHintType;

    .line 40
    new-instance v13, Lcom/dcloud/zxing2/DecodeHintType;

    const-class v15, Ljava/lang/Void;

    const-string v14, "ASSUME_CODE_39_CHECK_DIGIT"

    const/4 v12, 0x7

    invoke-direct {v13, v14, v12, v15}, Lcom/dcloud/zxing2/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v13, Lcom/dcloud/zxing2/DecodeHintType;->ASSUME_CODE_39_CHECK_DIGIT:Lcom/dcloud/zxing2/DecodeHintType;

    .line 47
    new-instance v14, Lcom/dcloud/zxing2/DecodeHintType;

    const-class v15, Ljava/lang/Void;

    const-string v12, "ASSUME_GS1"

    const/16 v10, 0x8

    invoke-direct {v14, v12, v10, v15}, Lcom/dcloud/zxing2/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v14, Lcom/dcloud/zxing2/DecodeHintType;->ASSUME_GS1:Lcom/dcloud/zxing2/DecodeHintType;

    .line 54
    new-instance v12, Lcom/dcloud/zxing2/DecodeHintType;

    const-class v15, Ljava/lang/Void;

    const-string v10, "RETURN_CODABAR_START_END"

    const/16 v8, 0x9

    invoke-direct {v12, v10, v8, v15}, Lcom/dcloud/zxing2/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v12, Lcom/dcloud/zxing2/DecodeHintType;->RETURN_CODABAR_START_END:Lcom/dcloud/zxing2/DecodeHintType;

    .line 60
    new-instance v10, Lcom/dcloud/zxing2/DecodeHintType;

    const-class v15, Lcom/dcloud/zxing2/ResultPointCallback;

    const-string v8, "NEED_RESULT_POINT_CALLBACK"

    const/16 v6, 0xa

    invoke-direct {v10, v8, v6, v15}, Lcom/dcloud/zxing2/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v10, Lcom/dcloud/zxing2/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/dcloud/zxing2/DecodeHintType;

    .line 70
    new-instance v8, Lcom/dcloud/zxing2/DecodeHintType;

    const-string v15, "ALLOWED_EAN_EXTENSIONS"

    const/16 v6, 0xb

    invoke-direct {v8, v15, v6, v0}, Lcom/dcloud/zxing2/DecodeHintType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v8, Lcom/dcloud/zxing2/DecodeHintType;->ALLOWED_EAN_EXTENSIONS:Lcom/dcloud/zxing2/DecodeHintType;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/dcloud/zxing2/DecodeHintType;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v5, v0, v1

    const/4 v1, 0x4

    aput-object v7, v0, v1

    const/4 v1, 0x5

    aput-object v9, v0, v1

    const/4 v1, 0x6

    aput-object v11, v0, v1

    const/4 v1, 0x7

    aput-object v13, v0, v1

    const/16 v1, 0x8

    aput-object v14, v0, v1

    const/16 v1, 0x9

    aput-object v12, v0, v1

    const/16 v1, 0xa

    aput-object v10, v0, v1

    aput-object v8, v0, v6

    .line 71
    sput-object v0, Lcom/dcloud/zxing2/DecodeHintType;->$VALUES:[Lcom/dcloud/zxing2/DecodeHintType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/dcloud/zxing2/DecodeHintType;->valueType:Ljava/lang/Class;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dcloud/zxing2/DecodeHintType;
    .registers 2

    .line 1
    const-class v0, Lcom/dcloud/zxing2/DecodeHintType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dcloud/zxing2/DecodeHintType;

    return-object p0
.end method

.method public static values()[Lcom/dcloud/zxing2/DecodeHintType;
    .registers 1

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/DecodeHintType;->$VALUES:[Lcom/dcloud/zxing2/DecodeHintType;

    invoke-virtual {v0}, [Lcom/dcloud/zxing2/DecodeHintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dcloud/zxing2/DecodeHintType;

    return-object v0
.end method


# virtual methods
.method public getValueType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/DecodeHintType;->valueType:Ljava/lang/Class;

    return-object v0
.end method
