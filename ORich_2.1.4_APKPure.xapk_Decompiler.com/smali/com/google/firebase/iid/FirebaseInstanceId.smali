###### Class com.google.firebase.iid.FirebaseInstanceId (com.google.firebase.iid.FirebaseInstanceId)
.class public Lcom/google/firebase/iid/FirebaseInstanceId;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/iid/FirebaseInstanceId$zza;
    }
.end annotation


# static fields
.field private static final zzaq:J

.field private static zzar:Lcom/google/firebase/iid/zzax;

.field private static zzas:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field private final zzat:Ljava/util/concurrent/Executor;

.field private final zzau:Lcom/google/firebase/FirebaseApp;

.field private final zzav:Lcom/google/firebase/iid/zzam;

.field private zzaw:Lcom/google/firebase/iid/MessagingChannel;

.field private final zzax:Lcom/google/firebase/iid/zzar;

.field private final zzay:Lcom/google/firebase/iid/zzba;

.field private zzaz:Z

.field private final zzba:Lcom/google/firebase/iid/FirebaseInstanceId$zza;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 159
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaq:J

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/events/Subscriber;Lcom/google/firebase/platforminfo/UserAgentPublisher;)V
    .registers 11

    .line 3
    new-instance v2, Lcom/google/firebase/iid/zzam;

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/firebase/iid/zzam;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lcom/google/firebase/iid/zzh;->zze()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 6
    invoke-static {}, Lcom/google/firebase/iid/zzh;->zze()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    .line 7
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/iid/FirebaseInstanceId;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/zzam;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/firebase/events/Subscriber;Lcom/google/firebase/platforminfo/UserAgentPublisher;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/zzam;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/firebase/events/Subscriber;Lcom/google/firebase/platforminfo/UserAgentPublisher;)V
    .registers 10

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaz:Z

    .line 11
    invoke-static {p1}, Lcom/google/firebase/iid/zzam;->zza(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 13
    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v0

    .line 14
    :try_start_f
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->zzar:Lcom/google/firebase/iid/zzax;

    if-nez v1, :cond_1e

    .line 15
    new-instance v1, Lcom/google/firebase/iid/zzax;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/firebase/iid/zzax;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->zzar:Lcom/google/firebase/iid/zzax;

    .line 16
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_68

    .line 17
    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzau:Lcom/google/firebase/FirebaseApp;

    .line 18
    iput-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzav:Lcom/google/firebase/iid/zzam;

    .line 20
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaw:Lcom/google/firebase/iid/MessagingChannel;

    if-nez v0, :cond_41

    .line 21
    const-class v0, Lcom/google/firebase/iid/MessagingChannel;

    invoke-virtual {p1, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/MessagingChannel;

    if-eqz v0, :cond_3a

    .line 22
    invoke-interface {v0}, Lcom/google/firebase/iid/MessagingChannel;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 23
    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaw:Lcom/google/firebase/iid/MessagingChannel;

    goto :goto_41

    .line 24
    :cond_3a
    new-instance v0, Lcom/google/firebase/iid/zzr;

    invoke-direct {v0, p1, p2, p3, p6}, Lcom/google/firebase/iid/zzr;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/zzam;Ljava/util/concurrent/Executor;Lcom/google/firebase/platforminfo/UserAgentPublisher;)V

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaw:Lcom/google/firebase/iid/MessagingChannel;

    .line 25
    :cond_41
    :goto_41
    iget-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaw:Lcom/google/firebase/iid/MessagingChannel;

    .line 26
    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaw:Lcom/google/firebase/iid/MessagingChannel;

    .line 27
    iput-object p4, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzat:Ljava/util/concurrent/Executor;

    .line 28
    new-instance p1, Lcom/google/firebase/iid/zzba;

    sget-object p2, Lcom/google/firebase/iid/FirebaseInstanceId;->zzar:Lcom/google/firebase/iid/zzax;

    invoke-direct {p1, p2}, Lcom/google/firebase/iid/zzba;-><init>(Lcom/google/firebase/iid/zzax;)V

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzay:Lcom/google/firebase/iid/zzba;

    .line 29
    new-instance p1, Lcom/google/firebase/iid/FirebaseInstanceId$zza;

    invoke-direct {p1, p0, p5}, Lcom/google/firebase/iid/FirebaseInstanceId$zza;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/events/Subscriber;)V

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzba:Lcom/google/firebase/iid/FirebaseInstanceId$zza;

    .line 30
    new-instance p2, Lcom/google/firebase/iid/zzar;

    invoke-direct {p2, p3}, Lcom/google/firebase/iid/zzar;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzax:Lcom/google/firebase/iid/zzar;

    .line 32
    invoke-virtual {p1}, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_67

    .line 34
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzh()V

    :cond_67
    return-void

    :catchall_68
    move-exception p1

    .line 16
    :try_start_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw p1

    .line 12
    :cond_6b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;
    .registers 2

    .line 2
    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/iid/FirebaseInstanceId;

    return-object p0
.end method

.method private final declared-synchronized startSync()V
    .registers 3

    monitor-enter p0

    .line 45
    :try_start_1
    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaz:Z

    if-nez v0, :cond_a

    const-wide/16 v0, 0x0

    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(J)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 47
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/iid/InstanceIdResult;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-static {p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 64
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzat:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/iid/zzo;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/firebase/iid/zzo;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method static synthetic zza(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/FirebaseApp;
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzau:Lcom/google/firebase/FirebaseApp;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x7530

    .line 84
    :try_start_2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1
    :try_end_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_8} :catch_11
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_8} :catch_9
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_8} :catch_9

    return-object p1

    .line 95
    :catch_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_11
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 87
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_2c

    .line 88
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "INSTANCE_ID_RESET"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 89
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzn()V

    .line 90
    :cond_29
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 91
    :cond_2c
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_33

    .line 92
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 93
    :cond_33
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static zza(Ljava/lang/Runnable;J)V
    .registers 8

    .line 53
    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v0

    .line 54
    :try_start_3
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->zzas:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v1, :cond_16

    .line 55
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    const-string v4, "FirebaseInstanceId"

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->zzas:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 56
    :cond_16
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->zzas:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p0, p1, p2, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 57
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method private static zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/zzaw;
    .registers 4

    .line 82
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzar:Lcom/google/firebase/iid/zzax;

    const-string v1, ""

    invoke-virtual {v0, v1, p0, p1}, Lcom/google/firebase/iid/zzax;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/zzaw;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/firebase/iid/FirebaseInstanceId;)V
    .registers 1

    .line 158
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzh()V

    return-void
.end method

.method private static zzd(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "fcm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "gcm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    return-object p0

    :cond_18
    :goto_18
    const-string p0, "*"

    return-object p0
.end method

.method private final zzh()V
    .registers 3

    .line 36
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzk()Lcom/google/firebase/iid/zzaw;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzr()Z

    move-result v1

    if-nez v1, :cond_18

    .line 38
    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/firebase/iid/zzaw;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzay:Lcom/google/firebase/iid/zzba;

    .line 39
    invoke-virtual {v0}, Lcom/google/firebase/iid/zzba;->zzaq()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 40
    :cond_18
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSync()V

    :cond_1b
    return-void
.end method

.method private static zzj()Ljava/lang/String;
    .registers 2

    .line 60
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzar:Lcom/google/firebase/iid/zzax;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzax;->zzi(Ljava/lang/String;)Lcom/google/firebase/iid/zzaa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzaa;->getKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/zzam;->zza(Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static zzm()Z
    .registers 4

    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    .line 123
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_18

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_16

    .line 124
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    return v0

    :cond_18
    :goto_18
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public deleteInstanceId()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1b

    .line 70
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzj()Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaw:Lcom/google/firebase/iid/MessagingChannel;

    invoke-interface {v1, v0}, Lcom/google/firebase/iid/MessagingChannel;->deleteInstanceId(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 72
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzn()V

    return-void

    .line 69
    :cond_1b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAIN_THREAD"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2b

    .line 98
    invoke-static {p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 99
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzj()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/zzaw;

    move-result-object v1

    .line 101
    invoke-static {v1}, Lcom/google/firebase/iid/zzaw;->zzb(Lcom/google/firebase/iid/zzaw;)Ljava/lang/String;

    move-result-object v1

    .line 102
    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaw:Lcom/google/firebase/iid/MessagingChannel;

    invoke-interface {v2, v0, v1, p1, p2}, Lcom/google/firebase/iid/MessagingChannel;->deleteToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzar:Lcom/google/firebase/iid/zzax;

    const-string v1, ""

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/iid/zzax;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 97
    :cond_2b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "MAIN_THREAD"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCreationTime()J
    .registers 3

    .line 61
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzar:Lcom/google/firebase/iid/zzax;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzax;->zzi(Ljava/lang/String;)Lcom/google/firebase/iid/zzaa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzaa;->getCreationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 58
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzh()V

    .line 59
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzj()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceId()Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/iid/InstanceIdResult;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzau:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/zzam;->zza(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzk()Lcom/google/firebase/iid/zzaw;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaw:Lcom/google/firebase/iid/MessagingChannel;

    invoke-interface {v1}, Lcom/google/firebase/iid/MessagingChannel;->needsRefresh()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/firebase/iid/zzaw;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 76
    :cond_12
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSync()V

    .line 77
    :cond_15
    invoke-static {v0}, Lcom/google/firebase/iid/zzaw;->zzb(Lcom/google/firebase/iid/zzaw;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_19

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/iid/InstanceIdResult;

    invoke-interface {p1}, Lcom/google/firebase/iid/InstanceIdResult;->getToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 79
    :cond_19
    new-instance p1, Ljava/io/IOException;

    const-string p2, "MAIN_THREAD"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized zza(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 105
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzay:Lcom/google/firebase/iid/zzba;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzba;->zza(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 106
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 107
    monitor-exit p0

    return-object p1

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final synthetic zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzj()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-static {p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/zzaw;

    move-result-object p3

    .line 146
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaw:Lcom/google/firebase/iid/MessagingChannel;

    invoke-interface {v0}, Lcom/google/firebase/iid/MessagingChannel;->needsRefresh()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0, p3}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/firebase/iid/zzaw;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 147
    new-instance p1, Lcom/google/firebase/iid/zzy;

    iget-object p2, p3, Lcom/google/firebase/iid/zzaw;->zzbx:Ljava/lang/String;

    invoke-direct {p1, v2, p2}, Lcom/google/firebase/iid/zzy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 148
    :cond_22
    invoke-static {p3}, Lcom/google/firebase/iid/zzaw;->zzb(Lcom/google/firebase/iid/zzaw;)Ljava/lang/String;

    move-result-object v3

    .line 149
    iget-object p3, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzax:Lcom/google/firebase/iid/zzar;

    new-instance v6, Lcom/google/firebase/iid/zzn;

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/iid/zzn;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2, v6}, Lcom/google/firebase/iid/zzar;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/iid/zzat;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 7

    .line 150
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaw:Lcom/google/firebase/iid/MessagingChannel;

    .line 151
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/firebase/iid/MessagingChannel;->getToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 152
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzat:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/firebase/iid/zzp;

    invoke-direct {v1, p0, p3, p4, p1}, Lcom/google/firebase/iid/zzp;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final declared-synchronized zza(J)V
    .registers 14

    monitor-enter p0

    const-wide/16 v0, 0x1e

    const/4 v2, 0x1

    shl-long v3, p1, v2

    .line 48
    :try_start_6
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v3, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaq:J

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 49
    new-instance v0, Lcom/google/firebase/iid/zzaz;

    iget-object v7, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzav:Lcom/google/firebase/iid/zzam;

    iget-object v8, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzay:Lcom/google/firebase/iid/zzba;

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/google/firebase/iid/zzaz;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/zzam;Lcom/google/firebase/iid/zzba;J)V

    .line 50
    invoke-static {v0, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Ljava/lang/Runnable;J)V

    .line 51
    iput-boolean v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaz:Z
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_22

    .line 52
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zza(Z)V
    .registers 2

    monitor-enter p0

    .line 43
    :try_start_1
    iput-boolean p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaz:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 44
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final zza(Lcom/google/firebase/iid/zzaw;)Z
    .registers 3

    if-eqz p1, :cond_11

    .line 142
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzav:Lcom/google/firebase/iid/zzam;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzam;->zzad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/iid/zzaw;->zzg(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    return p1

    :cond_11
    :goto_11
    const/4 p1, 0x1

    return p1
.end method

.method final synthetic zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 153
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzar:Lcom/google/firebase/iid/zzax;

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzav:Lcom/google/firebase/iid/zzam;

    .line 154
    invoke-virtual {v1}, Lcom/google/firebase/iid/zzam;->zzad()Ljava/lang/String;

    move-result-object v5

    const-string v1, ""

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    .line 155
    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/iid/zzax;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance p1, Lcom/google/firebase/iid/zzy;

    invoke-direct {p1, p3, p4}, Lcom/google/firebase/iid/zzy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final zzb(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzk()Lcom/google/firebase/iid/zzaw;

    move-result-object v0

    .line 109
    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/firebase/iid/zzaw;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 111
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzj()Ljava/lang/String;

    move-result-object v1

    .line 112
    iget-object v0, v0, Lcom/google/firebase/iid/zzaw;->zzbx:Ljava/lang/String;

    .line 113
    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaw:Lcom/google/firebase/iid/MessagingChannel;

    invoke-interface {v2, v1, v0, p1}, Lcom/google/firebase/iid/MessagingChannel;->subscribeToTopic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 115
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    return-void

    .line 110
    :cond_1a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "token not available"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb(Z)V
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzba:Lcom/google/firebase/iid/FirebaseInstanceId$zza;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->setEnabled(Z)V

    return-void
.end method

.method final zzc(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzk()Lcom/google/firebase/iid/zzaw;

    move-result-object v0

    .line 118
    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/firebase/iid/zzaw;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 120
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzj()Ljava/lang/String;

    move-result-object v1

    .line 121
    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaw:Lcom/google/firebase/iid/MessagingChannel;

    iget-object v0, v0, Lcom/google/firebase/iid/zzaw;->zzbx:Ljava/lang/String;

    invoke-interface {v2, v1, v0, p1}, Lcom/google/firebase/iid/MessagingChannel;->unsubscribeFromTopic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    return-void

    .line 119
    :cond_1a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "token not available"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final zzi()Lcom/google/firebase/FirebaseApp;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzau:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method

.method final zzk()Lcom/google/firebase/iid/zzaw;
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzau:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/zzam;->zza(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-static {v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/zzaw;

    move-result-object v0

    return-object v0
.end method

.method final zzl()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzau:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/iid/zzam;->zza(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final declared-synchronized zzn()V
    .registers 2

    monitor-enter p0

    .line 126
    :try_start_1
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzar:Lcom/google/firebase/iid/zzax;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzax;->zzal()V

    .line 128
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzba:Lcom/google/firebase/iid/FirebaseInstanceId$zza;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 130
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSync()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 131
    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final zzo()Z
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaw:Lcom/google/firebase/iid/MessagingChannel;

    invoke-interface {v0}, Lcom/google/firebase/iid/MessagingChannel;->isAvailable()Z

    move-result v0

    return v0
.end method

.method final zzp()V
    .registers 3

    .line 133
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzar:Lcom/google/firebase/iid/zzax;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzax;->zzj(Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->startSync()V

    return-void
.end method

.method public final zzq()Z
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzba:Lcom/google/firebase/iid/FirebaseInstanceId$zza;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->isEnabled()Z

    move-result v0

    return v0
.end method

.method final zzr()Z
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->zzaw:Lcom/google/firebase/iid/MessagingChannel;

    invoke-interface {v0}, Lcom/google/firebase/iid/MessagingChannel;->needsRefresh()Z

    move-result v0

    return v0
.end method

###### Class com.google.firebase.iid.FirebaseInstanceId.zza (com.google.firebase.iid.FirebaseInstanceId$zza)
.class final Lcom/google/firebase/iid/FirebaseInstanceId$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/iid/FirebaseInstanceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field private final zzbg:Z

.field private final zzbh:Lcom/google/firebase/events/Subscriber;

.field private zzbi:Lcom/google/firebase/events/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/events/EventHandler<",
            "Lcom/google/firebase/DataCollectionDefaultChange;",
            ">;"
        }
    .end annotation
.end field

.field private zzbj:Ljava/lang/Boolean;

.field final synthetic zzbk:Lcom/google/firebase/iid/FirebaseInstanceId;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/events/Subscriber;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzbk:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzbh:Lcom/google/firebase/events/Subscriber;

    .line 3
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzu()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzbg:Z

    .line 4
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzt()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzbj:Ljava/lang/Boolean;

    if-nez v0, :cond_23

    if-eqz p1, :cond_23

    .line 6
    new-instance p1, Lcom/google/firebase/iid/zzq;

    invoke-direct {p1, p0}, Lcom/google/firebase/iid/zzq;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId$zza;)V

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzbi:Lcom/google/firebase/events/EventHandler;

    .line 7
    const-class v0, Lcom/google/firebase/DataCollectionDefaultChange;

    invoke-interface {p2, v0, p1}, Lcom/google/firebase/events/Subscriber;->subscribe(Ljava/lang/Class;Lcom/google/firebase/events/EventHandler;)V

    :cond_23
    return-void
.end method

.method private final zzt()Ljava/lang/Boolean;
    .registers 7

    const-string v0, "firebase_messaging_auto_init_enabled"

    .line 26
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzbk:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.google.firebase.messaging"

    const/4 v3, 0x0

    .line 28
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "auto_init"

    .line 29
    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 30
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 31
    :cond_24
    :try_start_24
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 34
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    .line 35
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 36
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_4d

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 37
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 38
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_4c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_4c} :catch_4d

    return-object v0

    :catch_4d
    :cond_4d
    const/4 v0, 0x0

    return-object v0
.end method

.method private final zzu()Z
    .registers 5

    const/4 v0, 0x1

    :try_start_1
    const-string v1, "com.google.firebase.messaging.FirebaseMessaging"

    .line 42
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_7

    return v0

    :catch_7
    nop

    .line 45
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzbk:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 46
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.firebase.MESSAGING_EVENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 49
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_30

    return v0

    :cond_30
    return v3
.end method


# virtual methods
.method final declared-synchronized isEnabled()Z
    .registers 2

    monitor-enter p0

    .line 9
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzbj:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_21

    monitor-exit p0

    return v0

    .line 11
    :cond_b
    :try_start_b
    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzbg:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzbk:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->isDataCollectionDefaultEnabled()Z

    move-result v0
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_21

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_1e
    const/4 v0, 0x0

    .line 12
    monitor-exit p0

    return v0

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized setEnabled(Z)V
    .registers 5

    monitor-enter p0

    .line 13
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzbi:Lcom/google/firebase/events/EventHandler;

    if-eqz v0, :cond_f

    .line 14
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzbh:Lcom/google/firebase/events/Subscriber;

    const-class v2, Lcom/google/firebase/DataCollectionDefaultChange;

    invoke-interface {v1, v2, v0}, Lcom/google/firebase/events/Subscriber;->unsubscribe(Ljava/lang/Class;Lcom/google/firebase/events/EventHandler;)V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzbi:Lcom/google/firebase/events/EventHandler;

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzbk:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 17
    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.firebase.messaging"

    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 19
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_init"

    .line 20
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 21
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_33

    .line 23
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzbk:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Lcom/google/firebase/iid/FirebaseInstanceId;)V

    .line 24
    :cond_33
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzbj:Ljava/lang/Boolean;
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    .line 25
    monitor-exit p0

    return-void

    :catchall_3b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.google.firebase.iid.zzq (com.google.firebase.iid.zzq)
.class final synthetic Lcom/google/firebase/iid/zzq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/events/EventHandler;


# instance fields
.field private final zzbo:Lcom/google/firebase/iid/FirebaseInstanceId$zza;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId$zza;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzq;->zzbo:Lcom/google/firebase/iid/FirebaseInstanceId$zza;

    return-void
.end method


# virtual methods
.method public final handle(Lcom/google/firebase/events/Event;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/firebase/iid/zzq;->zzbo:Lcom/google/firebase/iid/FirebaseInstanceId$zza;

    .line 2
    monitor-enter p1

    .line 3
    :try_start_3
    invoke-virtual {p1}, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4
    iget-object v0, p1, Lcom/google/firebase/iid/FirebaseInstanceId$zza;->zzbk:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Lcom/google/firebase/iid/FirebaseInstanceId;)V

    .line 5
    :cond_e
    monitor-exit p1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

###### Class com.google.firebase.iid.zzn (com.google.firebase.iid.zzn)
.class final synthetic Lcom/google/firebase/iid/zzn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/iid/zzat;


# instance fields
.field private final zzbb:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final zzbc:Ljava/lang/String;

.field private final zzbd:Ljava/lang/String;

.field private final zzbe:Ljava/lang/String;

.field private final zzbf:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzn;->zzbb:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, Lcom/google/firebase/iid/zzn;->zzbc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/iid/zzn;->zzbd:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/iid/zzn;->zzbe:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/firebase/iid/zzn;->zzbf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzs()Lcom/google/android/gms/tasks/Task;
    .registers 6

    iget-object v0, p0, Lcom/google/firebase/iid/zzn;->zzbb:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v1, p0, Lcom/google/firebase/iid/zzn;->zzbc:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/iid/zzn;->zzbd:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/iid/zzn;->zzbe:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/iid/zzn;->zzbf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.firebase.iid.zzo (com.google.firebase.iid.zzo)
.class final synthetic Lcom/google/firebase/iid/zzo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final zzbb:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final zzbc:Ljava/lang/String;

.field private final zzbd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzo;->zzbb:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, Lcom/google/firebase/iid/zzo;->zzbc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/iid/zzo;->zzbd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/google/firebase/iid/zzo;->zzbb:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v1, p0, Lcom/google/firebase/iid/zzo;->zzbc:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/iid/zzo;->zzbd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.firebase.iid.zzp (com.google.firebase.iid.zzp)
.class final synthetic Lcom/google/firebase/iid/zzp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final zzbb:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final zzbc:Ljava/lang/String;

.field private final zzbd:Ljava/lang/String;

.field private final zzbe:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzp;->zzbb:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, Lcom/google/firebase/iid/zzp;->zzbc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/iid/zzp;->zzbd:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/iid/zzp;->zzbe:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 6

    iget-object v0, p0, Lcom/google/firebase/iid/zzp;->zzbb:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v1, p0, Lcom/google/firebase/iid/zzp;->zzbc:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/iid/zzp;->zzbd:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/iid/zzp;->zzbe:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
