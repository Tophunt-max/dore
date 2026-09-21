###### Class com.igexin.push.c.h (com.igexin.push.c.h)
.class public final enum Lcom/igexin/push/c/h;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/igexin/push/c/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/igexin/push/c/h;

.field public static final enum b:Lcom/igexin/push/c/h;

.field private static final synthetic c:[Lcom/igexin/push/c/h;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/igexin/push/c/h;

    const-string v1, "WIFI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/igexin/push/c/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/push/c/h;->a:Lcom/igexin/push/c/h;

    new-instance v1, Lcom/igexin/push/c/h;

    const-string v3, "MOBILE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/igexin/push/c/h;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/igexin/push/c/h;->b:Lcom/igexin/push/c/h;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/igexin/push/c/h;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/igexin/push/c/h;->c:[Lcom/igexin/push/c/h;

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
