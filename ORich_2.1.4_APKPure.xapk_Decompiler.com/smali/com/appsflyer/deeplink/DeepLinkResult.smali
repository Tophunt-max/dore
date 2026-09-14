###### Class com.appsflyer.deeplink.DeepLinkResult (com.appsflyer.deeplink.DeepLinkResult)
.class public Lcom/appsflyer/deeplink/DeepLinkResult;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/deeplink/DeepLinkResult$Error;,
        Lcom/appsflyer/deeplink/DeepLinkResult$Status;
    }
.end annotation


# instance fields
.field private final deepLink:Lcom/appsflyer/deeplink/DeepLink;

.field private final error:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

.field private final status:Lcom/appsflyer/deeplink/DeepLinkResult$Status;


# direct methods
.method public constructor <init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/appsflyer/deeplink/DeepLinkResult;->deepLink:Lcom/appsflyer/deeplink/DeepLink;

    .line 15
    iput-object p2, p0, Lcom/appsflyer/deeplink/DeepLinkResult;->error:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    if-eqz p2, :cond_e

    .line 16
    sget-object p1, Lcom/appsflyer/deeplink/DeepLinkResult$Status;->ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    iput-object p1, p0, Lcom/appsflyer/deeplink/DeepLinkResult;->status:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    goto :goto_19

    :cond_e
    if-eqz p1, :cond_15

    .line 17
    sget-object p1, Lcom/appsflyer/deeplink/DeepLinkResult$Status;->FOUND:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    iput-object p1, p0, Lcom/appsflyer/deeplink/DeepLinkResult;->status:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    goto :goto_19

    .line 18
    :cond_15
    sget-object p1, Lcom/appsflyer/deeplink/DeepLinkResult$Status;->NOT_FOUND:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    iput-object p1, p0, Lcom/appsflyer/deeplink/DeepLinkResult;->status:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    :goto_19
    return-void
.end method


# virtual methods
.method public getDeepLink()Lcom/appsflyer/deeplink/DeepLink;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/appsflyer/deeplink/DeepLinkResult;->deepLink:Lcom/appsflyer/deeplink/DeepLink;

    return-object v0
.end method

.method public getError()Lcom/appsflyer/deeplink/DeepLinkResult$Error;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/appsflyer/deeplink/DeepLinkResult;->error:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    return-object v0
.end method

.method public getStatus()Lcom/appsflyer/deeplink/DeepLinkResult$Status;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/appsflyer/deeplink/DeepLinkResult;->status:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "deepLink"

    .line 37
    iget-object v2, p0, Lcom/appsflyer/deeplink/DeepLinkResult;->deepLink:Lcom/appsflyer/deeplink/DeepLink;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "error"

    .line 38
    iget-object v2, p0, Lcom/appsflyer/deeplink/DeepLinkResult;->error:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "status"

    .line 39
    iget-object v2, p0, Lcom/appsflyer/deeplink/DeepLinkResult;->status:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1a} :catch_1a

    .line 42
    :catch_1a
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.appsflyer.deeplink.DeepLinkResult.Error (com.appsflyer.deeplink.DeepLinkResult$Error)
.class public final enum Lcom/appsflyer/deeplink/DeepLinkResult$Error;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/deeplink/DeepLinkResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/deeplink/DeepLinkResult$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic AFKeystoreWrapper:[Lcom/appsflyer/deeplink/DeepLinkResult$Error;

.field public static final enum DEVELOPER_ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

.field public static final enum HTTP_STATUS_CODE:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

.field public static final enum NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

.field public static final enum TIMEOUT:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

.field public static final enum UNEXPECTED:Lcom/appsflyer/deeplink/DeepLinkResult$Error;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 50
    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/deeplink/DeepLinkResult$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->TIMEOUT:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    new-instance v1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const-string v3, "NETWORK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/appsflyer/deeplink/DeepLinkResult$Error;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    new-instance v3, Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const-string v5, "HTTP_STATUS_CODE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/appsflyer/deeplink/DeepLinkResult$Error;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->HTTP_STATUS_CODE:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    new-instance v5, Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const-string v7, "UNEXPECTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/appsflyer/deeplink/DeepLinkResult$Error;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->UNEXPECTED:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    new-instance v7, Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const-string v9, "DEVELOPER_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/appsflyer/deeplink/DeepLinkResult$Error;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->DEVELOPER_ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 49
    sput-object v9, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->AFKeystoreWrapper:[Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/deeplink/DeepLinkResult$Error;
    .registers 2

    .line 49
    const-class v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/deeplink/DeepLinkResult$Error;
    .registers 1

    .line 49
    sget-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->AFKeystoreWrapper:[Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-virtual {v0}, [Lcom/appsflyer/deeplink/DeepLinkResult$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    return-object v0
.end method

###### Class com.appsflyer.deeplink.DeepLinkResult.Status (com.appsflyer.deeplink.DeepLinkResult$Status)
.class public final enum Lcom/appsflyer/deeplink/DeepLinkResult$Status;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/deeplink/DeepLinkResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/deeplink/DeepLinkResult$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic AFInAppEventParameterName:[Lcom/appsflyer/deeplink/DeepLinkResult$Status;

.field public static final enum ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

.field public static final enum FOUND:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

.field public static final enum NOT_FOUND:Lcom/appsflyer/deeplink/DeepLinkResult$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 46
    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    const-string v1, "FOUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/deeplink/DeepLinkResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Status;->FOUND:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    new-instance v1, Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    const-string v3, "NOT_FOUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/appsflyer/deeplink/DeepLinkResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/appsflyer/deeplink/DeepLinkResult$Status;->NOT_FOUND:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    new-instance v3, Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    const-string v5, "ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/appsflyer/deeplink/DeepLinkResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/appsflyer/deeplink/DeepLinkResult$Status;->ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 45
    sput-object v5, Lcom/appsflyer/deeplink/DeepLinkResult$Status;->AFInAppEventParameterName:[Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/deeplink/DeepLinkResult$Status;
    .registers 2

    .line 45
    const-class v0, Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/deeplink/DeepLinkResult$Status;
    .registers 1

    .line 45
    sget-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Status;->AFInAppEventParameterName:[Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    invoke-virtual {v0}, [Lcom/appsflyer/deeplink/DeepLinkResult$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    return-object v0
.end method
