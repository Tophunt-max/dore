###### Class com.igexin.push.core.v (com.igexin.push.core.v)
.class Lcom/igexin/push/core/v;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/igexin/push/core/s;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/igexin/push/core/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/igexin/push/core/s;-><init>(Lcom/igexin/push/core/t;)V

    sput-object v0, Lcom/igexin/push/core/v;->a:Lcom/igexin/push/core/s;

    return-void
.end method

.method static synthetic a()Lcom/igexin/push/core/s;
    .registers 1

    sget-object v0, Lcom/igexin/push/core/v;->a:Lcom/igexin/push/core/s;

    return-object v0
.end method
