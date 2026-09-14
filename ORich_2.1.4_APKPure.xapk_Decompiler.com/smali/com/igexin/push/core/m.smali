###### Class com.igexin.push.core.m (com.igexin.push.core.m)
.class final enum Lcom/igexin/push/core/m;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/igexin/push/core/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/igexin/push/core/m;

.field public static final enum b:Lcom/igexin/push/core/m;

.field public static final enum c:Lcom/igexin/push/core/m;

.field private static final synthetic d:[Lcom/igexin/push/core/m;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/igexin/push/core/m;

    const-string v1, "DETECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/igexin/push/core/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/push/core/m;->a:Lcom/igexin/push/core/m;

    new-instance v1, Lcom/igexin/push/core/m;

    const-string v3, "STABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/igexin/push/core/m;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/igexin/push/core/m;->b:Lcom/igexin/push/core/m;

    new-instance v3, Lcom/igexin/push/core/m;

    const-string v5, "PENDING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/igexin/push/core/m;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/igexin/push/core/m;->c:Lcom/igexin/push/core/m;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/igexin/push/core/m;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/igexin/push/core/m;->d:[Lcom/igexin/push/core/m;

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

.method public static a()[Lcom/igexin/push/core/m;
    .registers 1

    sget-object v0, Lcom/igexin/push/core/m;->d:[Lcom/igexin/push/core/m;

    invoke-virtual {v0}, [Lcom/igexin/push/core/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/igexin/push/core/m;

    return-object v0
.end method
