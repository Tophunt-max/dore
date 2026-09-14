###### Class com.google.android.gms.measurement.internal.zzir (com.google.android.gms.measurement.internal.zzir)
.class final Lcom/google/android/gms/measurement/internal/zzir;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic zzc:Z

.field final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzjo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjo;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzp;Z)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzir;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzir;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzir;->zzb:Lcom/google/android/gms/measurement/internal/zzp;

    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzir;->zzc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzir;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzir;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzjo;->zzh(Lcom/google/android/gms/measurement/internal/zzjo;)Lcom/google/android/gms/measurement/internal/zzeb;

    move-result-object v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzir;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v2, "Failed to get all user properties; not connected to service"

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1c} :catch_42
    .catchall {:try_start_3 .. :try_end_1c} :catchall_40

    :try_start_1c
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzir;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_5f

    return-void

    :cond_23
    :try_start_23
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzir;->zzb:Lcom/google/android/gms/measurement/internal/zzp;

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzir;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzir;->zzb:Lcom/google/android/gms/measurement/internal/zzp;

    iget-boolean v4, p0, Lcom/google/android/gms/measurement/internal/zzir;->zzc:Z

    .line 6
    invoke-interface {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzeb;->zze(Lcom/google/android/gms/measurement/internal/zzp;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzir;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzjo;->zzp(Lcom/google/android/gms/measurement/internal/zzjo;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_3a} :catch_42
    .catchall {:try_start_23 .. :try_end_3a} :catchall_40

    :try_start_3a
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzir;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    :goto_3c
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_5f

    goto :goto_57

    :catchall_40
    move-exception v1

    goto :goto_59

    :catch_42
    move-exception v1

    .line 12
    :try_start_43
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzir;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v3, "Failed to get all user properties; remote exception"

    .line 10
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_54
    .catchall {:try_start_43 .. :try_end_54} :catchall_40

    :try_start_54
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzir;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_3c

    .line 12
    :goto_57
    monitor-exit v0

    return-void

    .line 4
    :goto_59
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzir;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 11
    throw v1

    :catchall_5f
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_54 .. :try_end_61} :catchall_5f

    throw v1
.end method
