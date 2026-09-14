###### Class com.igexin.sdk.FcmPushService (com.igexin.sdk.FcmPushService)
.class public Lcom/igexin/sdk/FcmPushService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;


# static fields
.field public static final PAYLOAD_KEY:Ljava/lang/String; = "GT"

.field public static final TAG:Ljava/lang/String; = "Assist_FCM"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p1}, Lcom/igexin/assist/sdk/AssistPushManager;->checkSupportDevice(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .registers 6

    const-string v0, "actions"

    const-string v1, "GT"

    :try_start_4
    const-string v2, "Assist_FCM"

    const-string v3, "onMessageReceived receive meaasge ..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_49

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_49

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_49

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_49

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/igexin/sdk/FcmPushIntentService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "action"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/igexin/sdk/FcmPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/igexin/assist/control/fcm/ServiceUtils;->startService(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_49
    .catchall {:try_start_4 .. :try_end_49} :catchall_49

    :catchall_49
    :cond_49
    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .registers 6

    const-string v0, "token"

    :try_start_2
    invoke-virtual {p0}, Lcom/igexin/sdk/FcmPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/igexin/sdk/FcmPushService;->a(Landroid/content/Context;)Z

    move-result v1
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_59

    const-string v2, "Assist_FCM"

    if-eqz v1, :cond_14

    :try_start_e
    const-string p1, "already support other assist sdk!"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewToken token = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_59

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/igexin/sdk/FcmPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/igexin/sdk/FcmPushIntentService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "action"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FCM_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/igexin/sdk/FcmPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/igexin/assist/control/fcm/ServiceUtils;->startService(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_59
    .catchall {:try_start_e .. :try_end_59} :catchall_59

    :catchall_59
    :cond_59
    return-void
.end method
