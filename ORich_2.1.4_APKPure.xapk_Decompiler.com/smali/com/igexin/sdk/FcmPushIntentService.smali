###### Class com.igexin.sdk.FcmPushIntentService (com.igexin.sdk.FcmPushIntentService)
.class public Lcom/igexin/sdk/FcmPushIntentService;
.super Lcom/igexin/assist/control/fcm/GTJobService;


# static fields
.field public static final TAG:Ljava/lang/String; = "Assist_FCM"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/igexin/assist/control/fcm/GTJobService;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Lcom/igexin/assist/MessageBean;

    invoke-virtual {p0}, Lcom/igexin/sdk/FcmPushIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "token"

    invoke-direct {v0, v1, v2, p1}, Lcom/igexin/assist/MessageBean;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/igexin/assist/action/MessageManger;->getInstance()Lcom/igexin/assist/action/MessageManger;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/igexin/assist/action/MessageManger;->addMessage(Lcom/igexin/assist/MessageBean;)V

    :cond_18
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_19

    new-instance v0, Lcom/igexin/assist/MessageBean;

    invoke-virtual {p0}, Lcom/igexin/sdk/FcmPushIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "actions"

    invoke-direct {v0, v1, v2, p1}, Lcom/igexin/assist/MessageBean;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "FCM_"

    invoke-virtual {v0, p1}, Lcom/igexin/assist/MessageBean;->setMessageSource(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/assist/action/MessageManger;->getInstance()Lcom/igexin/assist/action/MessageManger;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/igexin/assist/action/MessageManger;->addMessage(Lcom/igexin/assist/MessageBean;)V

    :cond_19
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/igexin/sdk/FcmPushIntentService;->b(Landroid/content/Intent;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_6

    :catchall_6
    return-void
.end method

.method protected b(Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_32

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_f

    goto :goto_32

    :cond_f
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "token"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/igexin/sdk/FcmPushIntentService;->a(Ljava/lang/String;)V

    goto :goto_32

    :cond_23
    const-string v1, "actions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/igexin/sdk/FcmPushIntentService;->b(Ljava/lang/String;)V

    :cond_32
    :goto_32
    return-void
.end method
