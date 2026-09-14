###### Class com.google.firebase.messaging.zzb (com.google.firebase.messaging.zzb)
.class final Lcom/google/firebase/messaging/zzb;
.super Ljava/lang/Object;


# instance fields
.field private final zzag:Landroid/content/Context;

.field private final zzco:Landroid/os/Bundle;

.field private final zzdy:Ljava/util/concurrent/Executor;

.field private final zzdz:Lcom/google/firebase/messaging/zza;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/google/firebase/messaging/zzb;->zzdy:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p1, p0, Lcom/google/firebase/messaging/zzb;->zzag:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/firebase/messaging/zzb;->zzco:Landroid/os/Bundle;

    .line 5
    new-instance p2, Lcom/google/firebase/messaging/zza;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/google/firebase/messaging/zza;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/firebase/messaging/zzb;->zzdz:Lcom/google/firebase/messaging/zza;

    return-void
.end method


# virtual methods
.method final zzas()Z
    .registers 11

    .line 7
    iget-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzco:Landroid/os/Bundle;

    const-string v1, "gcm.n.noui"

    invoke-static {v0, v1}, Lcom/google/firebase/messaging/zza;->zza(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    return v1

    .line 10
    :cond_12
    iget-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzag:Landroid/content/Context;

    const-string v2, "keyguard"

    .line 11
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 12
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5e

    .line 13
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    move-result v0

    if-nez v0, :cond_2e

    const-wide/16 v3, 0xa

    .line 14
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 15
    :cond_2e
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 16
    iget-object v3, p0, Lcom/google/firebase/messaging/zzb;->zzag:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 17
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5e

    .line 19
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 20
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v0, :cond_46

    .line 21
    iget v0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-ne v0, v3, :cond_5e

    const/4 v0, 0x1

    goto :goto_5f

    :cond_5e
    const/4 v0, 0x0

    :goto_5f
    if-eqz v0, :cond_62

    return v2

    .line 27
    :cond_62
    iget-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzco:Landroid/os/Bundle;

    const-string v3, "gcm.n.image"

    invoke-static {v0, v3}, Lcom/google/firebase/messaging/zza;->zza(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/google/firebase/messaging/zze;->zzo(Ljava/lang/String;)Lcom/google/firebase/messaging/zze;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 30
    iget-object v3, p0, Lcom/google/firebase/messaging/zzb;->zzdy:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v3}, Lcom/google/firebase/messaging/zze;->zza(Ljava/util/concurrent/Executor;)V

    .line 33
    :cond_75
    iget-object v3, p0, Lcom/google/firebase/messaging/zzb;->zzdz:Lcom/google/firebase/messaging/zza;

    iget-object v4, p0, Lcom/google/firebase/messaging/zzb;->zzco:Landroid/os/Bundle;

    .line 34
    invoke-virtual {v3, v4}, Lcom/google/firebase/messaging/zza;->zzf(Landroid/os/Bundle;)Lcom/google/firebase/messaging/zzc;

    move-result-object v3

    .line 35
    iget-object v4, v3, Lcom/google/firebase/messaging/zzc;->zzea:Landroidx/core/app/NotificationCompat$Builder;

    const-string v5, "FirebaseMessaging"

    if-eqz v0, :cond_c0

    .line 38
    :try_start_83
    invoke-virtual {v0}, Lcom/google/firebase/messaging/zze;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v6

    const-wide/16 v7, 0x5

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v6, v7, v8, v9}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 39
    invoke-virtual {v4, v6}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 40
    new-instance v7, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v7}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    invoke-virtual {v7, v6}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_a5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_83 .. :try_end_a5} :catch_bf
    .catch Ljava/lang/InterruptedException; {:try_start_83 .. :try_end_a5} :catch_af
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_83 .. :try_end_a5} :catch_a6

    goto :goto_c0

    :catch_a6
    const-string v4, "Failed to download image in time, showing notification without it"

    .line 50
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {v0}, Lcom/google/firebase/messaging/zze;->close()V

    goto :goto_c0

    :catch_af
    const-string v4, "Interrupted while downloading image, showing notification without it"

    .line 45
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {v0}, Lcom/google/firebase/messaging/zze;->close()V

    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_c0

    :catch_bf
    nop

    :cond_c0
    :goto_c0
    const/4 v0, 0x3

    .line 53
    invoke-static {v5, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_cc

    const-string v0, "Showing notification"

    .line 54
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_cc
    iget-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzag:Landroid/content/Context;

    const-string v4, "notification"

    .line 56
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 57
    iget-object v4, v3, Lcom/google/firebase/messaging/zzc;->tag:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/firebase/messaging/zzc;->zzea:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v4, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return v1
.end method
