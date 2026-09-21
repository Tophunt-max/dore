###### Class com.igexin.assist.control.fcm.FcmPushManager (com.igexin.assist.control.fcm.FcmPushManager)
.class public Lcom/igexin/assist/control/fcm/FcmPushManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/assist/control/AbstractPushManager;


# static fields
.field public static final GCM_DEFAULT_SENDER_ID:Ljava/lang/String; = "gcm_defaultSenderId"

.field public static final TAG:Ljava/lang/String; = "Assist_FCM"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFcmDevice(Landroid/content/Context;)Z
    .registers 6

    const-string v0, "Assist_FCM"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Lcom/igexin/assist/sdk/AssistPushManager;->getToken()Ljava/lang/String;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_48

    const-string v3, "FCM_"

    const/4 v4, 0x1

    if-eqz v2, :cond_17

    :try_start_c
    invoke-static {}, Lcom/igexin/assist/sdk/AssistPushManager;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    return v4

    :cond_17
    invoke-static {}, Lcom/igexin/assist/sdk/AssistPushManager;->getInstance()Lcom/igexin/assist/sdk/AssistPushManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/assist/sdk/AssistPushManager;->getSpToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    return v4

    :cond_28
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkFcmDevice result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_c .. :try_end_44} :catchall_48

    if-nez p0, :cond_47

    const/4 v1, 0x1

    :cond_47
    return v1

    :catchall_48
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkFcmDevice error ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method public getToken(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "gcm_defaultSenderId"

    const-string v3, "string"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_14

    return-object v0

    :cond_14
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "FCM"

    invoke-virtual {v2, p1, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_27

    return-object p1

    :catch_27
    return-object v0
.end method

.method public register(Landroid/content/Context;)V
    .registers 5

    const-string v0, "Assist_FCM"

    const-string v1, "Register fcm push, and fcm is initialized when app launch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    invoke-static {}, Lcom/igexin/assist/sdk/AssistPushManager;->getInstance()Lcom/igexin/assist/sdk/AssistPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/assist/sdk/AssistPushManager;->getSpToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "FCM_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    new-instance v1, Lcom/igexin/assist/MessageBean;

    const-string v2, "token"

    invoke-direct {v1, p1, v2, v0}, Lcom/igexin/assist/MessageBean;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/igexin/assist/action/MessageManger;->getInstance()Lcom/igexin/assist/action/MessageManger;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/igexin/assist/action/MessageManger;->addMessage(Lcom/igexin/assist/MessageBean;)V
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_2b

    :catchall_2b
    :cond_2b
    return-void
.end method

.method public setSilentTime(Landroid/content/Context;II)V
    .registers 4

    return-void
.end method

.method public turnOffPush(Landroid/content/Context;)V
    .registers 5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/igexin/sdk/FcmIntentService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action"

    const-string v2, "turnOffPush"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v0}, Lcom/igexin/assist/control/fcm/ServiceUtils;->startService(Landroid/content/Context;Landroid/content/Intent;)Z

    invoke-static {}, Lcom/igexin/assist/sdk/AssistPushManager;->getInstance()Lcom/igexin/assist/sdk/AssistPushManager;

    move-result-object p1

    const-string v0, "false"

    invoke-virtual {p1, v0}, Lcom/igexin/assist/sdk/AssistPushManager;->saveToken(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1f
    return-void
.end method

.method public turnOnPush(Landroid/content/Context;)V
    .registers 5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/igexin/sdk/FcmIntentService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action"

    const-string v2, "turnOnPush"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v0}, Lcom/igexin/assist/control/fcm/ServiceUtils;->startService(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_16
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/igexin/assist/control/fcm/FcmPushManager;->turnOffPush(Landroid/content/Context;)V

    return-void
.end method
