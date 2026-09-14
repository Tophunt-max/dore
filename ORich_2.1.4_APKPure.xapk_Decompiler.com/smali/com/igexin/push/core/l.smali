###### Class com.igexin.push.core.l (com.igexin.push.core.l)
.class public final enum Lcom/igexin/push/core/l;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/igexin/push/core/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/igexin/push/core/l;

.field public static final enum b:Lcom/igexin/push/core/l;

.field public static final enum c:Lcom/igexin/push/core/l;

.field public static final enum d:Lcom/igexin/push/core/l;

.field private static final synthetic e:[Lcom/igexin/push/core/l;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/igexin/push/core/l;

    const-string v1, "HEARTBEAT_OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/igexin/push/core/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/push/core/l;->a:Lcom/igexin/push/core/l;

    new-instance v1, Lcom/igexin/push/core/l;

    const-string v3, "HEARTBEAT_TIMEOUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/igexin/push/core/l;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/igexin/push/core/l;->b:Lcom/igexin/push/core/l;

    new-instance v3, Lcom/igexin/push/core/l;

    const-string v5, "NETWORK_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/igexin/push/core/l;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/igexin/push/core/l;->c:Lcom/igexin/push/core/l;

    new-instance v5, Lcom/igexin/push/core/l;

    const-string v7, "NETWORK_SWITCH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/igexin/push/core/l;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/igexin/push/core/l;->d:Lcom/igexin/push/core/l;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/igexin/push/core/l;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/igexin/push/core/l;->e:[Lcom/igexin/push/core/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/igexin/push/core/l;
    .registers 1

    sget-object v0, Lcom/igexin/push/core/l;->e:[Lcom/igexin/push/core/l;

    invoke-virtual {v0}, [Lcom/igexin/push/core/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/igexin/push/core/l;

    return-object v0
.end method
