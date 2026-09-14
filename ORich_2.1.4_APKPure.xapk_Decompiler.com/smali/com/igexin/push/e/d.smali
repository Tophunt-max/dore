###### Class com.igexin.push.e.d (com.igexin.push.e.d)
.class final enum Lcom/igexin/push/e/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/igexin/push/e/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/igexin/push/e/d;

.field public static final enum b:Lcom/igexin/push/e/d;

.field private static final synthetic c:[Lcom/igexin/push/e/d;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/igexin/push/e/d;

    const-string v1, "WIFI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/igexin/push/e/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/push/e/d;->a:Lcom/igexin/push/e/d;

    new-instance v1, Lcom/igexin/push/e/d;

    const-string v3, "MOBILE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/igexin/push/e/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/igexin/push/e/d;->b:Lcom/igexin/push/e/d;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/igexin/push/e/d;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/igexin/push/e/d;->c:[Lcom/igexin/push/e/d;

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
