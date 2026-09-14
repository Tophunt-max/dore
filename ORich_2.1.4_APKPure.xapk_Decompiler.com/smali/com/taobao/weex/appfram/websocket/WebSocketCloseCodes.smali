###### Class com.taobao.weex.appfram.websocket.WebSocketCloseCodes (com.taobao.weex.appfram.websocket.WebSocketCloseCodes)
.class public final enum Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;
.super Ljava/lang/Enum;
.source "WebSocketCloseCodes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum CLOSE_ABNORMAL:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum CLOSE_GOING_AWAY:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum CLOSE_NORMAL:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum CLOSE_NO_STATUS:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum CLOSE_PROTOCOL_ERROR:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum CLOSE_TOO_LARGE:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum CLOSE_UNSUPPORTED:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum INTERNAL_ERROR:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum MISSING_EXTENSION:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum POLICY_VIOLATION:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum SERVICE_RESTART:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum TLS_HANDSHAKE:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum TRY_AGAIN_LATER:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum UNSUPPORTED_DATA:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 27
    new-instance v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string v1, "CLOSE_NORMAL"

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_NORMAL:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    .line 28
    new-instance v1, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string v3, "CLOSE_GOING_AWAY"

    const/4 v4, 0x1

    const/16 v5, 0x3e9

    invoke-direct {v1, v3, v4, v5}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_GOING_AWAY:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    .line 29
    new-instance v3, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string v5, "CLOSE_PROTOCOL_ERROR"

    const/4 v6, 0x2

    const/16 v7, 0x3ea

    invoke-direct {v3, v5, v6, v7}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_PROTOCOL_ERROR:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    .line 30
    new-instance v5, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string v7, "CLOSE_UNSUPPORTED"

    const/4 v8, 0x3

    const/16 v9, 0x3eb

    invoke-direct {v5, v7, v8, v9}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_UNSUPPORTED:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    .line 31
    new-instance v7, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string v9, "CLOSE_NO_STATUS"

    const/4 v10, 0x4

    const/16 v11, 0x3ed

    invoke-direct {v7, v9, v10, v11}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_NO_STATUS:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    .line 32
    new-instance v9, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string v11, "CLOSE_ABNORMAL"

    const/4 v12, 0x5

    const/16 v13, 0x3ee

    invoke-direct {v9, v11, v12, v13}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_ABNORMAL:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    .line 33
    new-instance v11, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string v13, "UNSUPPORTED_DATA"

    const/4 v14, 0x6

    const/16 v15, 0x3ef

    invoke-direct {v11, v13, v14, v15}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->UNSUPPORTED_DATA:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    .line 34
    new-instance v13, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string v15, "POLICY_VIOLATION"

    const/4 v14, 0x7

    const/16 v12, 0x3f0

    invoke-direct {v13, v15, v14, v12}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->POLICY_VIOLATION:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    .line 35
    new-instance v12, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string v15, "CLOSE_TOO_LARGE"

    const/16 v14, 0x8

    const/16 v10, 0x3f1

    invoke-direct {v12, v15, v14, v10}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_TOO_LARGE:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    .line 36
    new-instance v10, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string v15, "MISSING_EXTENSION"

    const/16 v14, 0x9

    const/16 v8, 0x3f2

    invoke-direct {v10, v15, v14, v8}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->MISSING_EXTENSION:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    .line 37
    new-instance v8, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string v15, "INTERNAL_ERROR"

    const/16 v14, 0xa

    const/16 v6, 0x3f3

    invoke-direct {v8, v15, v14, v6}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->INTERNAL_ERROR:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    .line 38
    new-instance v6, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string v15, "SERVICE_RESTART"

    const/16 v14, 0xb

    const/16 v4, 0x3f4

    invoke-direct {v6, v15, v14, v4}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->SERVICE_RESTART:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    .line 39
    new-instance v4, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string v15, "TRY_AGAIN_LATER"

    const/16 v14, 0xc

    const/16 v2, 0x3f5

    invoke-direct {v4, v15, v14, v2}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->TRY_AGAIN_LATER:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    .line 40
    new-instance v2, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string v15, "TLS_HANDSHAKE"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const/16 v4, 0x3f7

    invoke-direct {v2, v15, v14, v4}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->TLS_HANDSHAKE:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const/4 v15, 0x0

    aput-object v0, v4, v15

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    aput-object v2, v4, v14

    .line 26
    sput-object v4, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->$VALUES:[Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;
    .registers 2

    .line 26
    const-class v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;
    .registers 1

    .line 26
    sget-object v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->$VALUES:[Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {v0}, [Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 49
    iget v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->code:I

    return v0
.end method
