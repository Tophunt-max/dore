###### Class com.google.android.gms.measurement.internal.zzfr (com.google.android.gms.measurement.internal.zzfr)
.class final Lcom/google/android/gms/measurement/internal/zzfr;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-measurement-impl@@20.0.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzfs;

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/measurement/internal/zzfq<",
            "*>;>;"
        }
    .end annotation
.end field

.field private zzd:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfs;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/measurement/internal/zzfq<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zza:Lcom/google/android/gms/measurement/internal/zzfs;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzd:Z

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzc:Ljava/util/concurrent/BlockingQueue;

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzfr;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private final zzb()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zza:Lcom/google/android/gms/measurement/internal/zzfs;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfs;->zzc(Lcom/google/android/gms/measurement/internal/zzfs;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzd:Z

    if-nez v1, :cond_4e

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zza:Lcom/google/android/gms/measurement/internal/zzfs;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzfs;->zzj(Lcom/google/android/gms/measurement/internal/zzfs;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zza:Lcom/google/android/gms/measurement/internal/zzfs;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzfs;->zzc(Lcom/google/android/gms/measurement/internal/zzfs;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zza:Lcom/google/android/gms/measurement/internal/zzfs;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzfs;->zzb(Lcom/google/android/gms/measurement/internal/zzfs;)Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    const/4 v2, 0x0

    if-ne p0, v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zza:Lcom/google/android/gms/measurement/internal/zzfs;

    .line 3
    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfs;->zzm(Lcom/google/android/gms/measurement/internal/zzfs;Lcom/google/android/gms/measurement/internal/zzfr;)V

    goto :goto_4b

    .line 7
    :cond_2c
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zza:Lcom/google/android/gms/measurement/internal/zzfs;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzfs;->zza(Lcom/google/android/gms/measurement/internal/zzfs;)Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    if-ne p0, v1, :cond_3a

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zza:Lcom/google/android/gms/measurement/internal/zzfs;

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfs;->zzl(Lcom/google/android/gms/measurement/internal/zzfs;Lcom/google/android/gms/measurement/internal/zzfr;)V

    goto :goto_4b

    :cond_3a
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zza:Lcom/google/android/gms/measurement/internal/zzfs;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v2, "Current scheduler thread is neither worker nor network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    :goto_4b
    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzd:Z

    .line 7
    :cond_4e
    monitor-exit v0

    return-void

    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_7 .. :try_end_52} :catchall_50

    throw v1
.end method

.method private final zzc(Ljava/lang/InterruptedException;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zza:Lcom/google/android/gms/measurement/internal/zzfs;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzel;->zzk()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " was interrupted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_14

    .line 1
    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zza:Lcom/google/android/gms/measurement/internal/zzfs;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzfs;->zzj(Lcom/google/android/gms/measurement/internal/zzfs;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_d} :catch_f

    const/4 v1, 0x1

    goto :goto_2

    :catch_f
    move-exception v2

    .line 2
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc(Ljava/lang/InterruptedException;)V

    goto :goto_2

    .line 3
    :cond_14
    :try_start_14
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    :goto_1c
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzc:Ljava/util/concurrent/BlockingQueue;

    .line 4
    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzfq;

    if-eqz v2, :cond_35

    iget-boolean v3, v2, Lcom/google/android/gms/measurement/internal/zzfq;->zza:Z

    if-eq v0, v3, :cond_2d

    const/16 v3, 0xa

    goto :goto_2e

    :cond_2d
    move v3, v1

    .line 5
    :goto_2e
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfq;->run()V

    goto :goto_1c

    :cond_35
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzb:Ljava/lang/Object;

    .line 7
    monitor-enter v2
    :try_end_38
    .catchall {:try_start_14 .. :try_end_38} :catchall_82

    :try_start_38
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzc:Ljava/util/concurrent/BlockingQueue;

    .line 8
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_51

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zza:Lcom/google/android/gms/measurement/internal/zzfs;

    .line 9
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzfs;->zzr(Lcom/google/android/gms/measurement/internal/zzfs;)Z
    :try_end_45
    .catchall {:try_start_38 .. :try_end_45} :catchall_7f

    :try_start_45
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzb:Ljava/lang/Object;

    const-wide/16 v4, 0x7530

    .line 10
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_4c} :catch_4d
    .catchall {:try_start_45 .. :try_end_4c} :catchall_7f

    goto :goto_51

    :catch_4d
    move-exception v3

    .line 11
    :try_start_4e
    invoke-direct {p0, v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc(Ljava/lang/InterruptedException;)V

    .line 12
    :cond_51
    :goto_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_7f

    :try_start_52
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zza:Lcom/google/android/gms/measurement/internal/zzfs;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzfs;->zzc(Lcom/google/android/gms/measurement/internal/zzfs;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_82

    :try_start_59
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzc:Ljava/util/concurrent/BlockingQueue;

    .line 13
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7a

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zza:Lcom/google/android/gms/measurement/internal/zzfs;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    .line 16
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzdy;->zzaj:Lcom/google/android/gms/measurement/internal/zzdx;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdx;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzb()V

    .line 18
    :cond_75
    monitor-exit v2
    :try_end_76
    .catchall {:try_start_59 .. :try_end_76} :catchall_7c

    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzb()V

    return-void

    .line 14
    :cond_7a
    :try_start_7a
    monitor-exit v2

    goto :goto_1c

    :catchall_7c
    move-exception v0

    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_7a .. :try_end_7e} :catchall_7c

    :try_start_7e
    throw v0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_82

    :catchall_7f
    move-exception v0

    .line 12
    :try_start_80
    monitor-exit v2
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    :try_start_81
    throw v0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_82

    :catchall_82
    move-exception v0

    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzb()V

    .line 20
    throw v0
.end method

.method public final zza()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzb:Ljava/lang/Object;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
