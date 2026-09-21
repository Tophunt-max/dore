###### Class com.igexin.sdk.e (com.igexin.sdk.e)
.class Lcom/igexin/sdk/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/igexin/sdk/GTServiceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/igexin/sdk/GTServiceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/igexin/sdk/GTServiceManager;-><init>(Lcom/igexin/sdk/d;)V

    sput-object v0, Lcom/igexin/sdk/e;->a:Lcom/igexin/sdk/GTServiceManager;

    return-void
.end method

.method static synthetic a()Lcom/igexin/sdk/GTServiceManager;
    .registers 1

    sget-object v0, Lcom/igexin/sdk/e;->a:Lcom/igexin/sdk/GTServiceManager;

    return-object v0
.end method
