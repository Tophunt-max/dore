###### Class com.igexin.push.extension.distribution.gbd.a.c.e (com.igexin.push.extension.distribution.gbd.a.c.e)
.class public final enum Lcom/igexin/push/extension/distribution/gbd/a/c/e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/igexin/push/extension/distribution/gbd/a/c/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/igexin/push/extension/distribution/gbd/a/c/e;

.field public static final enum b:Lcom/igexin/push/extension/distribution/gbd/a/c/e;

.field private static final synthetic c:[Lcom/igexin/push/extension/distribution/gbd/a/c/e;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/a/c/e;

    const-string v1, "SCAN_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/igexin/push/extension/distribution/gbd/a/c/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/a/c/e;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/e;

    new-instance v1, Lcom/igexin/push/extension/distribution/gbd/a/c/e;

    const-string v3, "SCAN_END"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/igexin/push/extension/distribution/gbd/a/c/e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/igexin/push/extension/distribution/gbd/a/c/e;->b:Lcom/igexin/push/extension/distribution/gbd/a/c/e;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/igexin/push/extension/distribution/gbd/a/c/e;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/igexin/push/extension/distribution/gbd/a/c/e;->c:[Lcom/igexin/push/extension/distribution/gbd/a/c/e;

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
