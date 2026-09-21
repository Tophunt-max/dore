###### Class com.igexin.sdk.GTServiceManager (com.igexin.sdk.GTServiceManager)
.class public Lcom/igexin/sdk/GTServiceManager;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/igexin/sdk/d;)V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/sdk/GTServiceManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/igexin/sdk/GTServiceManager;
    .registers 1

    invoke-static {}, Lcom/igexin/sdk/e;->a()Lcom/igexin/sdk/GTServiceManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onActivityCreate(Landroid/app/Activity;)V
    .registers 3

    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/s;->a(Landroid/app/Activity;)V

    return-void
.end method
