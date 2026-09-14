###### Class com.igexin.push.e.e (com.igexin.push.e.e)
.class Lcom/igexin/push/e/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/igexin/push/e/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/igexin/push/e/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/igexin/push/e/b;-><init>(Lcom/igexin/push/e/c;)V

    sput-object v0, Lcom/igexin/push/e/e;->a:Lcom/igexin/push/e/b;

    return-void
.end method

.method static synthetic a()Lcom/igexin/push/e/b;
    .registers 1

    sget-object v0, Lcom/igexin/push/e/e;->a:Lcom/igexin/push/e/b;

    return-object v0
.end method
