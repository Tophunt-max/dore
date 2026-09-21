###### Class com.igexin.push.c.d (com.igexin.push.c.d)
.class public final enum Lcom/igexin/push/c/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/igexin/push/c/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/igexin/push/c/d;

.field public static final enum b:Lcom/igexin/push/c/d;

.field public static final enum c:Lcom/igexin/push/c/d;

.field private static final synthetic e:[Lcom/igexin/push/c/d;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/igexin/push/c/d;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/igexin/push/c/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/igexin/push/c/d;->a:Lcom/igexin/push/c/d;

    new-instance v1, Lcom/igexin/push/c/d;

    const-string v3, "BACKUP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/igexin/push/c/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/igexin/push/c/d;->b:Lcom/igexin/push/c/d;

    new-instance v3, Lcom/igexin/push/c/d;

    const-string v5, "TRY_NORMAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/igexin/push/c/d;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/igexin/push/c/d;->c:Lcom/igexin/push/c/d;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/igexin/push/c/d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/igexin/push/c/d;->e:[Lcom/igexin/push/c/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/igexin/push/c/d;->d:I

    iput p3, p0, Lcom/igexin/push/c/d;->d:I

    return-void
.end method

.method public static a(I)Lcom/igexin/push/c/d;
    .registers 6

    invoke-static {}, Lcom/igexin/push/c/d;->a()[Lcom/igexin/push/c/d;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/igexin/push/c/d;->b()I

    move-result v4

    if-ne v4, p0, :cond_11

    return-object v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()[Lcom/igexin/push/c/d;
    .registers 1

    sget-object v0, Lcom/igexin/push/c/d;->e:[Lcom/igexin/push/c/d;

    invoke-virtual {v0}, [Lcom/igexin/push/c/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/igexin/push/c/d;

    return-object v0
.end method


# virtual methods
.method public b()I
    .registers 2

    iget v0, p0, Lcom/igexin/push/c/d;->d:I

    return v0
.end method
