###### Class com.igexin.sdk.FcmIntentService (com.igexin.sdk.FcmIntentService)
.class public Lcom/igexin/sdk/FcmIntentService;
.super Lcom/igexin/assist/control/fcm/GTJobService;


# static fields
.field public static final GCM_DEFAULT_SENDER_ID:Ljava/lang/String; = "gcm_defaultSenderId"

.field public static final TAG:Ljava/lang/String; = "Assist_FCM"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/igexin/assist/control/fcm/GTJobService;-><init>()V

    return-void
.end method

.method private a()V
    .registers 7

    const-string v0, "token"

    const-string v1, "Assist_FCM"

    :try_start_4
    iget v2, p0, Lcom/igexin/sdk/FcmIntentService;->a:I

    if-nez v2, :cond_1a

    invoke-virtual {p0}, Lcom/igexin/sdk/FcmIntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "gcm_defaultSenderId"

    const-string v4, "string"

    invoke-virtual {p0}, Lcom/igexin/sdk/FcmIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/igexin/sdk/FcmIntentService;->a:I

    :cond_1a
    iget v2, p0, Lcom/igexin/sdk/FcmIntentService;->a:I

    if-nez v2, :cond_24

    const-string v0, "not found fcm defaultSenderId!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_24
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v2

    invoke-virtual {p0}, Lcom/igexin/sdk/FcmIntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/igexin/sdk/FcmIntentService;->a:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FCM"

    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_83

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/igexin/sdk/FcmIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/igexin/sdk/FcmPushIntentService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "action"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FCM_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/igexin/sdk/FcmIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/igexin/assist/control/fcm/ServiceUtils;->startService(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_69
    .catchall {:try_start_4 .. :try_end_69} :catchall_6a

    goto :goto_83

    :catchall_6a
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fcm turnoff error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    :goto_83
    return-void
.end method

.method private b()V
    .registers 6

    const-string v0, "Assist_FCM"

    :try_start_2
    iget v1, p0, Lcom/igexin/sdk/FcmIntentService;->a:I

    if-nez v1, :cond_18

    invoke-virtual {p0}, Lcom/igexin/sdk/FcmIntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "gcm_defaultSenderId"

    const-string v3, "string"

    invoke-virtual {p0}, Lcom/igexin/sdk/FcmIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/igexin/sdk/FcmIntentService;->a:I

    :cond_18
    iget v1, p0, Lcom/igexin/sdk/FcmIntentService;->a:I

    if-nez v1, :cond_22

    const-string v1, "not found fcm defaultSenderId!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v1

    invoke-virtual {p0}, Lcom/igexin/sdk/FcmIntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/igexin/sdk/FcmIntentService;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FCM"

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/iid/FirebaseInstanceId;->deleteToken(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_2 .. :try_end_35} :catchall_36

    goto :goto_4f

    :catchall_36
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fcm turnoff error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4f
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/igexin/sdk/FcmIntentService;->b(Landroid/content/Intent;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_6

    :catchall_6
    return-void
.end method

.method protected b(Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2a

    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_2a

    :cond_f
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "turnOnPush"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/igexin/sdk/FcmIntentService;->a()V

    goto :goto_2a

    :cond_1f
    const-string v0, "turnOffPush"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    invoke-direct {p0}, Lcom/igexin/sdk/FcmIntentService;->b()V

    :cond_2a
    :goto_2a
    return-void
.end method
