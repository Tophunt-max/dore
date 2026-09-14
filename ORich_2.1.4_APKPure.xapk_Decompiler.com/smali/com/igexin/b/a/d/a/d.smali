###### Class com.igexin.b.a.d.a.d (com.igexin.b.a.d.a.d)
.class public final enum Lcom/igexin/b/a/d/a/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/igexin/b/a/d/a/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/igexin/b/a/d/a/d;

.field public static final enum b:Lcom/igexin/b/a/d/a/d;

.field public static final enum c:Lcom/igexin/b/a/d/a/d;

.field public static final enum d:Lcom/igexin/b/a/d/a/d;

.field public static final enum e:Lcom/igexin/b/a/d/a/d;

.field public static final enum f:Lcom/igexin/b/a/d/a/d;

.field private static final synthetic g:[Lcom/igexin/b/a/d/a/d;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    new-instance v0, Lcom/igexin/b/a/d/a/d;

    const-string v1, "error"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/igexin/b/a/d/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/b/a/d/a/d;->a:Lcom/igexin/b/a/d/a/d;

    new-instance v1, Lcom/igexin/b/a/d/a/d;

    const-string v3, "cancel"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/igexin/b/a/d/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/igexin/b/a/d/a/d;->b:Lcom/igexin/b/a/d/a/d;

    new-instance v3, Lcom/igexin/b/a/d/a/d;

    const-string v5, "percent"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/igexin/b/a/d/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/igexin/b/a/d/a/d;->c:Lcom/igexin/b/a/d/a/d;

    new-instance v5, Lcom/igexin/b/a/d/a/d;

    const-string v7, "horizontal"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/igexin/b/a/d/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/igexin/b/a/d/a/d;->d:Lcom/igexin/b/a/d/a/d;

    new-instance v7, Lcom/igexin/b/a/d/a/d;

    const-string v9, "cycle"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/igexin/b/a/d/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/igexin/b/a/d/a/d;->e:Lcom/igexin/b/a/d/a/d;

    new-instance v9, Lcom/igexin/b/a/d/a/d;

    const-string v11, "complete"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/igexin/b/a/d/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/igexin/b/a/d/a/d;->f:Lcom/igexin/b/a/d/a/d;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/igexin/b/a/d/a/d;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/igexin/b/a/d/a/d;->g:[Lcom/igexin/b/a/d/a/d;

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
