###### Class com.google.firebase.iid.zzc (com.google.firebase.iid.zzc)
.class public abstract Lcom/google/firebase/iid/zzc;
.super Landroid/app/Service;


# instance fields
.field private final lock:Ljava/lang/Object;

.field final zzt:Ljava/util/concurrent/ExecutorService;

.field private zzu:Landroid/os/Binder;

.field private zzv:I

.field private zzw:I


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase_messaging/zza;->zza()Lcom/google/android/gms/internal/firebase_messaging/zzb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "Firebase-"

    if-eqz v3, :cond_22

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_27

    :cond_22
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_27
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/google/android/gms/internal/firebase_messaging/zzf;->zze:I

    .line 5
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzb;->zza(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/zzc;->zzt:Ljava/util/concurrent/ExecutorService;

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzc;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/firebase/iid/zzc;->zzw:I

    return-void
.end method

.method private final zza(Landroid/content/Intent;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 27
    invoke-static {p1}, Landroidx/legacy/content/WakefulBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 28
    :cond_5
    iget-object p1, p0, Lcom/google/firebase/iid/zzc;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 29
    :try_start_8
    iget v0, p0, Lcom/google/firebase/iid/zzc;->zzw:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/firebase/iid/zzc;->zzw:I

    if-nez v0, :cond_15

    .line 31
    iget v0, p0, Lcom/google/firebase/iid/zzc;->zzv:I

    .line 32
    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/zzc;->stopSelfResult(I)Z

    .line 33
    :cond_15
    monitor-exit p1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v0
.end method

.method static synthetic zza(Lcom/google/firebase/iid/zzc;Landroid/content/Intent;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzc;->zza(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string p1, "EnhancedIntentService"

    const/4 v0, 0x3

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "EnhancedIntentService"

    const-string v0, "Service received bind request"

    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_11
    iget-object p1, p0, Lcom/google/firebase/iid/zzc;->zzu:Landroid/os/Binder;

    if-nez p1, :cond_1c

    .line 11
    new-instance p1, Lcom/google/firebase/iid/zzg;

    invoke-direct {p1, p0}, Lcom/google/firebase/iid/zzg;-><init>(Lcom/google/firebase/iid/zzc;)V

    iput-object p1, p0, Lcom/google/firebase/iid/zzc;->zzu:Landroid/os/Binder;

    .line 12
    :cond_1c
    iget-object p1, p0, Lcom/google/firebase/iid/zzc;->zzu:Landroid/os/Binder;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object p1

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    .line 13
    iget-object p2, p0, Lcom/google/firebase/iid/zzc;->lock:Ljava/lang/Object;

    monitor-enter p2

    .line 14
    :try_start_3
    iput p3, p0, Lcom/google/firebase/iid/zzc;->zzv:I

    .line 15
    iget p3, p0, Lcom/google/firebase/iid/zzc;->zzw:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/google/firebase/iid/zzc;->zzw:I

    .line 16
    monitor-exit p2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2d

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/zzc;->zzb(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    const/4 p3, 0x2

    if-nez p2, :cond_17

    .line 19
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzc;->zza(Landroid/content/Intent;)V

    return p3

    .line 21
    :cond_17
    invoke-virtual {p0, p2}, Lcom/google/firebase/iid/zzc;->zzc(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 22
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzc;->zza(Landroid/content/Intent;)V

    return p3

    .line 24
    :cond_21
    iget-object p3, p0, Lcom/google/firebase/iid/zzc;->zzt:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/google/firebase/iid/zzb;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/firebase/iid/zzb;-><init>(Lcom/google/firebase/iid/zzc;Landroid/content/Intent;Landroid/content/Intent;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x3

    return p1

    :catchall_2d
    move-exception p1

    .line 16
    :try_start_2e
    monitor-exit p2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method protected zzb(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2

    return-object p1
.end method

.method public zzc(Landroid/content/Intent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public abstract zzd(Landroid/content/Intent;)V
.end method
