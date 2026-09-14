###### Class com.dcloud.zxing2.client.result.ParsedResultType (com.dcloud.zxing2.client.result.ParsedResultType)
.class public final enum Lcom/dcloud/zxing2/client/result/ParsedResultType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dcloud/zxing2/client/result/ParsedResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dcloud/zxing2/client/result/ParsedResultType;

.field public static final enum ADDRESSBOOK:Lcom/dcloud/zxing2/client/result/ParsedResultType;

.field public static final enum CALENDAR:Lcom/dcloud/zxing2/client/result/ParsedResultType;

.field public static final enum EMAIL_ADDRESS:Lcom/dcloud/zxing2/client/result/ParsedResultType;

.field public static final enum GEO:Lcom/dcloud/zxing2/client/result/ParsedResultType;

.field public static final enum ISBN:Lcom/dcloud/zxing2/client/result/ParsedResultType;

.field public static final enum PRODUCT:Lcom/dcloud/zxing2/client/result/ParsedResultType;

.field public static final enum SMS:Lcom/dcloud/zxing2/client/result/ParsedResultType;

.field public static final enum TEL:Lcom/dcloud/zxing2/client/result/ParsedResultType;

.field public static final enum TEXT:Lcom/dcloud/zxing2/client/result/ParsedResultType;

.field public static final enum URI:Lcom/dcloud/zxing2/client/result/ParsedResultType;

.field public static final enum VIN:Lcom/dcloud/zxing2/client/result/ParsedResultType;

.field public static final enum WIFI:Lcom/dcloud/zxing2/client/result/ParsedResultType;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Lcom/dcloud/zxing2/client/result/ParsedResultType;

    const-string v1, "ADDRESSBOOK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dcloud/zxing2/client/result/ParsedResultType;->ADDRESSBOOK:Lcom/dcloud/zxing2/client/result/ParsedResultType;

    .line 2
    new-instance v1, Lcom/dcloud/zxing2/client/result/ParsedResultType;

    const-string v3, "EMAIL_ADDRESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dcloud/zxing2/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dcloud/zxing2/client/result/ParsedResultType;->EMAIL_ADDRESS:Lcom/dcloud/zxing2/client/result/ParsedResultType;

    .line 3
    new-instance v3, Lcom/dcloud/zxing2/client/result/ParsedResultType;

    const-string v5, "PRODUCT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dcloud/zxing2/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dcloud/zxing2/client/result/ParsedResultType;->PRODUCT:Lcom/dcloud/zxing2/client/result/ParsedResultType;

    .line 4
    new-instance v5, Lcom/dcloud/zxing2/client/result/ParsedResultType;

    const-string v7, "URI"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/dcloud/zxing2/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dcloud/zxing2/client/result/ParsedResultType;->URI:Lcom/dcloud/zxing2/client/result/ParsedResultType;

    .line 5
    new-instance v7, Lcom/dcloud/zxing2/client/result/ParsedResultType;

    const-string v9, "TEXT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/dcloud/zxing2/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dcloud/zxing2/client/result/ParsedResultType;->TEXT:Lcom/dcloud/zxing2/client/result/ParsedResultType;

    .line 6
    new-instance v9, Lcom/dcloud/zxing2/client/result/ParsedResultType;

    const-string v11, "GEO"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/dcloud/zxing2/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/dcloud/zxing2/client/result/ParsedResultType;->GEO:Lcom/dcloud/zxing2/client/result/ParsedResultType;

    .line 7
    new-instance v11, Lcom/dcloud/zxing2/client/result/ParsedResultType;

    const-string v13, "TEL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/dcloud/zxing2/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/dcloud/zxing2/client/result/ParsedResultType;->TEL:Lcom/dcloud/zxing2/client/result/ParsedResultType;

    .line 8
    new-instance v13, Lcom/dcloud/zxing2/client/result/ParsedResultType;

    const-string v15, "SMS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/dcloud/zxing2/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/dcloud/zxing2/client/result/ParsedResultType;->SMS:Lcom/dcloud/zxing2/client/result/ParsedResultType;

    .line 9
    new-instance v15, Lcom/dcloud/zxing2/client/result/ParsedResultType;

    const-string v14, "CALENDAR"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/dcloud/zxing2/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/dcloud/zxing2/client/result/ParsedResultType;->CALENDAR:Lcom/dcloud/zxing2/client/result/ParsedResultType;

    .line 10
    new-instance v14, Lcom/dcloud/zxing2/client/result/ParsedResultType;

    const-string v12, "WIFI"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/dcloud/zxing2/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/dcloud/zxing2/client/result/ParsedResultType;->WIFI:Lcom/dcloud/zxing2/client/result/ParsedResultType;

    .line 11
    new-instance v12, Lcom/dcloud/zxing2/client/result/ParsedResultType;

    const-string v10, "ISBN"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/dcloud/zxing2/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/dcloud/zxing2/client/result/ParsedResultType;->ISBN:Lcom/dcloud/zxing2/client/result/ParsedResultType;

    .line 12
    new-instance v10, Lcom/dcloud/zxing2/client/result/ParsedResultType;

    const-string v8, "VIN"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/dcloud/zxing2/client/result/ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/dcloud/zxing2/client/result/ParsedResultType;->VIN:Lcom/dcloud/zxing2/client/result/ParsedResultType;

    const/16 v8, 0xc

    new-array v8, v8, [Lcom/dcloud/zxing2/client/result/ParsedResultType;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    .line 13
    sput-object v8, Lcom/dcloud/zxing2/client/result/ParsedResultType;->$VALUES:[Lcom/dcloud/zxing2/client/result/ParsedResultType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dcloud/zxing2/client/result/ParsedResultType;
    .registers 2

    .line 1
    const-class v0, Lcom/dcloud/zxing2/client/result/ParsedResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dcloud/zxing2/client/result/ParsedResultType;

    return-object p0
.end method

.method public static values()[Lcom/dcloud/zxing2/client/result/ParsedResultType;
    .registers 1

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/client/result/ParsedResultType;->$VALUES:[Lcom/dcloud/zxing2/client/result/ParsedResultType;

    invoke-virtual {v0}, [Lcom/dcloud/zxing2/client/result/ParsedResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dcloud/zxing2/client/result/ParsedResultType;

    return-object v0
.end method
