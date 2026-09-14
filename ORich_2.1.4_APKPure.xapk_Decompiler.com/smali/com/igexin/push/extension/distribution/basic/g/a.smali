###### Class com.igexin.push.extension.distribution.basic.g.a (com.igexin.push.extension.distribution.basic.g.a)
.class public final enum Lcom/igexin/push/extension/distribution/basic/g/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/igexin/push/extension/distribution/basic/g/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/igexin/push/extension/distribution/basic/g/a;

.field public static final enum b:Lcom/igexin/push/extension/distribution/basic/g/a;

.field public static final enum c:Lcom/igexin/push/extension/distribution/basic/g/a;

.field public static final enum d:Lcom/igexin/push/extension/distribution/basic/g/a;

.field private static final synthetic f:[Lcom/igexin/push/extension/distribution/basic/g/a;


# instance fields
.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/igexin/push/extension/distribution/basic/g/a;

    const-string v1, "UNSET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/igexin/push/extension/distribution/basic/g/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/g/a;->a:Lcom/igexin/push/extension/distribution/basic/g/a;

    new-instance v1, Lcom/igexin/push/extension/distribution/basic/g/a;

    const-string v3, "BIG_IMAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/igexin/push/extension/distribution/basic/g/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/igexin/push/extension/distribution/basic/g/a;->b:Lcom/igexin/push/extension/distribution/basic/g/a;

    new-instance v3, Lcom/igexin/push/extension/distribution/basic/g/a;

    const-string v5, "LONG_TEXT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/igexin/push/extension/distribution/basic/g/a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/igexin/push/extension/distribution/basic/g/a;->c:Lcom/igexin/push/extension/distribution/basic/g/a;

    new-instance v5, Lcom/igexin/push/extension/distribution/basic/g/a;

    const-string v7, "PURE_IMAGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/igexin/push/extension/distribution/basic/g/a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/igexin/push/extension/distribution/basic/g/a;->d:Lcom/igexin/push/extension/distribution/basic/g/a;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/igexin/push/extension/distribution/basic/g/a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/igexin/push/extension/distribution/basic/g/a;->f:[Lcom/igexin/push/extension/distribution/basic/g/a;

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

    iput p3, p0, Lcom/igexin/push/extension/distribution/basic/g/a;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/igexin/push/extension/distribution/basic/g/a;->e:I

    return v0
.end method
