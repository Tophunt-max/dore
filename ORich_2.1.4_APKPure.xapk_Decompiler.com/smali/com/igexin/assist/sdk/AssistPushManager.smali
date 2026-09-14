###### Class com.igexin.assist.sdk.AssistPushManager (com.igexin.assist.sdk.AssistPushManager)
.class public Lcom/igexin/assist/sdk/AssistPushManager;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/igexin/assist/control/AbstractPushManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/igexin/assist/sdk/b;)V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/assist/sdk/AssistPushManager;-><init>()V

    return-void
.end method

.method public static checkSupportDevice(Landroid/content/Context;)Z
    .registers 1

    invoke-static {p0}, Lcom/igexin/assist/sdk/a;->c(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/igexin/assist/sdk/AssistPushManager;
    .registers 1

    invoke-static {}, Lcom/igexin/assist/sdk/c;->a()Lcom/igexin/assist/sdk/AssistPushManager;

    move-result-object v0

    return-object v0
.end method

.method public static getToken()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/igexin/push/core/f;->y:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getPushManager()Lcom/igexin/assist/control/AbstractPushManager;
    .registers 2

    iget-object v0, p0, Lcom/igexin/assist/sdk/AssistPushManager;->a:Lcom/igexin/assist/control/AbstractPushManager;

    return-object v0
.end method

.method public getSpToken()Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Lcom/igexin/push/core/c/c;

    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/push/core/c/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/push/core/c/c;->e()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    return-object v0

    :catchall_c
    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .registers 2

    invoke-static {p1}, Lcom/igexin/assist/sdk/a;->a(Landroid/content/Context;)Lcom/igexin/assist/control/AbstractPushManager;

    move-result-object p1

    iput-object p1, p0, Lcom/igexin/assist/sdk/AssistPushManager;->a:Lcom/igexin/assist/control/AbstractPushManager;

    return-void
.end method

.method public register(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/igexin/assist/sdk/AssistPushManager;->a:Lcom/igexin/assist/control/AbstractPushManager;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/igexin/assist/control/AbstractPushManager;->register(Landroid/content/Context;)V

    :cond_7
    return-void
.end method

.method public saveToken(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/c/h;->d(Ljava/lang/String;)Z

    return-void
.end method

.method public setSilentTime(Landroid/content/Context;II)V
    .registers 5

    iget-object v0, p0, Lcom/igexin/assist/sdk/AssistPushManager;->a:Lcom/igexin/assist/control/AbstractPushManager;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3}, Lcom/igexin/assist/control/AbstractPushManager;->setSilentTime(Landroid/content/Context;II)V

    :cond_7
    return-void
.end method

.method public turnOffPush(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/igexin/assist/sdk/AssistPushManager;->a:Lcom/igexin/assist/control/AbstractPushManager;

    if-eqz v0, :cond_f

    invoke-interface {v0, p1}, Lcom/igexin/assist/control/AbstractPushManager;->turnOffPush(Landroid/content/Context;)V

    new-instance v0, Lcom/igexin/push/core/c/c;

    invoke-direct {v0, p1}, Lcom/igexin/push/core/c/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/push/core/c/c;->f()V

    :cond_f
    return-void
.end method

.method public turnOnPush(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/igexin/assist/sdk/AssistPushManager;->a:Lcom/igexin/assist/control/AbstractPushManager;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/igexin/assist/control/AbstractPushManager;->turnOnPush(Landroid/content/Context;)V

    :cond_7
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/igexin/assist/sdk/AssistPushManager;->a:Lcom/igexin/assist/control/AbstractPushManager;

    if-eqz v0, :cond_f

    invoke-interface {v0, p1}, Lcom/igexin/assist/control/AbstractPushManager;->unregister(Landroid/content/Context;)V

    new-instance v0, Lcom/igexin/push/core/c/c;

    invoke-direct {v0, p1}, Lcom/igexin/push/core/c/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/push/core/c/c;->f()V

    :cond_f
    return-void
.end method
