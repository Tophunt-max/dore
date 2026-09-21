###### Class com.igexin.b.a.b.a.a.b (com.igexin.b.a.b.a.a.b)
.class public final enum Lcom/igexin/b/a/b/a/a/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/igexin/b/a/b/a/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/igexin/b/a/b/a/a/b;

.field public static final enum b:Lcom/igexin/b/a/b/a/a/b;

.field public static final enum c:Lcom/igexin/b/a/b/a/a/b;

.field private static final synthetic d:[Lcom/igexin/b/a/b/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/igexin/b/a/b/a/a/b;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/igexin/b/a/b/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/b/a/b/a/a/b;->a:Lcom/igexin/b/a/b/a/a/b;

    new-instance v1, Lcom/igexin/b/a/b/a/a/b;

    const-string v3, "EXCEPTION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/igexin/b/a/b/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/igexin/b/a/b/a/a/b;->b:Lcom/igexin/b/a/b/a/a/b;

    new-instance v3, Lcom/igexin/b/a/b/a/a/b;

    const-string v5, "INTERRUPT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/igexin/b/a/b/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/igexin/b/a/b/a/a/b;->c:Lcom/igexin/b/a/b/a/a/b;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/igexin/b/a/b/a/a/b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/igexin/b/a/b/a/a/b;->d:[Lcom/igexin/b/a/b/a/a/b;

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
