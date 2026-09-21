###### Class com.igexin.push.c.g (com.igexin.push.c.g)
.class public final enum Lcom/igexin/push/c/g;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/igexin/push/c/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/igexin/push/c/g;

.field public static final enum b:Lcom/igexin/push/c/g;

.field public static final enum c:Lcom/igexin/push/c/g;

.field private static final synthetic d:[Lcom/igexin/push/c/g;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/igexin/push/c/g;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/igexin/push/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/push/c/g;->a:Lcom/igexin/push/c/g;

    new-instance v1, Lcom/igexin/push/c/g;

    const-string v3, "FAILED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/igexin/push/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/igexin/push/c/g;->b:Lcom/igexin/push/c/g;

    new-instance v3, Lcom/igexin/push/c/g;

    const-string v5, "EXCEPTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/igexin/push/c/g;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/igexin/push/c/g;->c:Lcom/igexin/push/c/g;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/igexin/push/c/g;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/igexin/push/c/g;->d:[Lcom/igexin/push/c/g;

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
