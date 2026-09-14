###### Class com.igexin.push.extension.distribution.gbd.a.b.n (com.igexin.push.extension.distribution.gbd.a.b.n)
.class final enum Lcom/igexin/push/extension/distribution/gbd/a/b/n;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/igexin/push/extension/distribution/gbd/a/b/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

.field public static final enum b:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

.field public static final enum c:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

.field public static final enum d:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

.field private static final synthetic e:[Lcom/igexin/push/extension/distribution/gbd/a/b/n;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    const-string v1, "SERVICE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/igexin/push/extension/distribution/gbd/a/b/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->a:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    new-instance v1, Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    const-string v3, "GACTIVITY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/igexin/push/extension/distribution/gbd/a/b/n;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->b:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    new-instance v3, Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    const-string v5, "ALL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/igexin/push/extension/distribution/gbd/a/b/n;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->c:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    new-instance v5, Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    const-string v7, "ONEOF"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/igexin/push/extension/distribution/gbd/a/b/n;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->d:Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->e:[Lcom/igexin/push/extension/distribution/gbd/a/b/n;

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

.method public static a()[Lcom/igexin/push/extension/distribution/gbd/a/b/n;
    .registers 1

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/a/b/n;->e:[Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    invoke-virtual {v0}, [Lcom/igexin/push/extension/distribution/gbd/a/b/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/igexin/push/extension/distribution/gbd/a/b/n;

    return-object v0
.end method
