###### Class com.google.firebase.messaging.FirebaseMessagingService (com.google.firebase.messaging.FirebaseMessagingService)
.class public Lcom/google/firebase/messaging/FirebaseMessagingService;
.super Lcom/google/firebase/iid/zzc;


# static fields
.field private static final zzeb:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 96
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService;->zzeb:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/iid/zzc;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletedMessages()V
    .registers 1

    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .registers 2

    return-void
.end method

.method public onMessageSent(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onSendError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    return-void
.end method

.method protected final zzb(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2

    .line 7
    invoke-static {}, Lcom/google/firebase/iid/zzau;->zzai()Lcom/google/firebase/iid/zzau;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/iid/zzau;->zzaj()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Landroid/content/Intent;)Z
    .registers 4

    .line 8
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.firebase.messaging.NOTIFICATION_OPEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "pending_intent"

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_21

    .line 12
    :try_start_16
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_19
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_21

    :catch_1a
    const-string v0, "FirebaseMessaging"

    const-string v1, "Notification pending intent canceled"

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_21
    :goto_21
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->shouldUploadMetrics(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 17
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->logNotificationOpen(Landroid/content/Intent;)V

    :cond_2a
    const/4 p1, 0x1

    return p1

    :cond_2c
    const/4 p1, 0x0

    return p1
.end method

.method public final zzd(Landroid/content/Intent;)V
    .registers 13

    .line 20
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "FirebaseMessaging"

    if-nez v1, :cond_59

    const-string v1, "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_59

    :cond_17
    const-string v1, "com.google.firebase.messaging.NOTIFICATION_DISMISS"

    .line 89
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 90
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->shouldUploadMetrics(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 91
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->logNotificationDismiss(Landroid/content/Intent;)V

    return-void

    :cond_29
    const-string v1, "com.google.firebase.messaging.NEW_TOKEN"

    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "token"

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onNewToken(Ljava/lang/String;)V

    return-void

    :cond_3b
    const-string v0, "Unknown intent action: "

    .line 94
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_55

    :cond_50
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_55
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    return-void

    :cond_59
    :goto_59
    const-string v0, "google.message_id"

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_6c

    const/4 v3, 0x0

    .line 26
    invoke-static {v3}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    goto :goto_7c

    .line 27
    :cond_6c
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 28
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {p0}, Lcom/google/firebase/iid/zzab;->zzc(Landroid/content/Context;)Lcom/google/firebase/iid/zzab;

    move-result-object v5

    .line 30
    invoke-virtual {v5, v4, v3}, Lcom/google/firebase/iid/zzab;->zza(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    .line 33
    :goto_7c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eqz v5, :cond_87

    :goto_85
    const/4 v1, 0x0

    goto :goto_bf

    .line 35
    :cond_87
    sget-object v5, Lcom/google/firebase/messaging/FirebaseMessagingService;->zzeb:Ljava/util/Queue;

    invoke-interface {v5, v1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b0

    .line 36
    invoke-static {v2, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_ae

    const-string v5, "Received duplicate message: "

    .line 37
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_a6

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_ab

    :cond_a6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_ab
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ae
    const/4 v1, 0x1

    goto :goto_bf

    .line 39
    :cond_b0
    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v9

    const/16 v10, 0xa

    if-lt v9, v10, :cond_bb

    .line 40
    invoke-interface {v5}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 41
    :cond_bb
    invoke-interface {v5, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_85

    :goto_bf
    if-nez v1, :cond_192

    const-string v1, "message_type"

    .line 45
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "gcm"

    if-nez v1, :cond_cc

    move-object v1, v5

    .line 48
    :cond_cc
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v9, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_1c2

    :goto_d7
    const/4 v4, -0x1

    goto :goto_100

    :sswitch_d9
    const-string v4, "send_event"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e2

    goto :goto_d7

    :cond_e2
    const/4 v4, 0x3

    goto :goto_100

    :sswitch_e4
    const-string v5, "send_error"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_100

    goto :goto_d7

    :sswitch_ed
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f4

    goto :goto_d7

    :cond_f4
    const/4 v4, 0x1

    goto :goto_100

    :sswitch_f6
    const-string v4, "deleted_messages"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ff

    goto :goto_d7

    :cond_ff
    const/4 v4, 0x0

    :cond_100
    :goto_100
    packed-switch v4, :pswitch_data_1d4

    const-string p1, "Received message with unknown type: "

    .line 83
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_114

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_11a

    :cond_114
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_11a
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_192

    .line 71
    :pswitch_11f
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageSent(Ljava/lang/String;)V

    goto :goto_192

    .line 75
    :pswitch_127
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_133

    const-string v0, "message_id"

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_133
    new-instance v1, Lcom/google/firebase/messaging/SendException;

    const-string v4, "error"

    .line 80
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/firebase/messaging/SendException;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onSendError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_192

    .line 49
    :pswitch_142
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->shouldUploadMetrics(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 50
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->logNotificationReceived(Landroid/content/Intent;)V

    .line 52
    :cond_14b
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_156

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_156
    const-string v1, "androidx.contentpager.content.wakelockid"

    .line 55
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 56
    invoke-static {v0}, Lcom/google/firebase/messaging/zza;->zzh(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_186

    .line 57
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 58
    new-instance v4, Lcom/google/firebase/messaging/zzb;

    invoke-direct {v4, p0, v0, v1}, Lcom/google/firebase/messaging/zzb;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/util/concurrent/Executor;)V

    .line 59
    :try_start_16a
    invoke-virtual {v4}, Lcom/google/firebase/messaging/zzb;->zzas()Z

    move-result v4
    :try_end_16e
    .catchall {:try_start_16a .. :try_end_16e} :catchall_181

    if-eqz v4, :cond_174

    .line 60
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_192

    .line 62
    :cond_174
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 65
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->shouldUploadMetrics(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_186

    .line 66
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->logNotificationForeground(Landroid/content/Intent;)V

    goto :goto_186

    :catchall_181
    move-exception p1

    .line 64
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw p1

    .line 67
    :cond_186
    :goto_186
    new-instance p1, Lcom/google/firebase/messaging/RemoteMessage;

    invoke-direct {p1, v0}, Lcom/google/firebase/messaging/RemoteMessage;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    goto :goto_192

    .line 69
    :pswitch_18f
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onDeletedMessages()V

    :cond_192
    :goto_192
    const-wide/16 v0, 0x1

    .line 84
    :try_start_194
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v0, v1, p1}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_199
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_194 .. :try_end_199} :catch_19e
    .catch Ljava/lang/InterruptedException; {:try_start_194 .. :try_end_199} :catch_19c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_194 .. :try_end_199} :catch_19a

    return-void

    :catch_19a
    move-exception p1

    goto :goto_19f

    :catch_19c
    move-exception p1

    goto :goto_19f

    :catch_19e
    move-exception p1

    .line 87
    :goto_19f
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Message ack failed: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_data_1c2
    .sparse-switch
        -0x7aedf14e -> :sswitch_f6
        0x18f11 -> :sswitch_ed
        0x308f3e91 -> :sswitch_e4
        0x3090df23 -> :sswitch_d9
    .end sparse-switch

    :pswitch_data_1d4
    .packed-switch 0x0
        :pswitch_18f
        :pswitch_142
        :pswitch_127
        :pswitch_11f
    .end packed-switch
.end method
