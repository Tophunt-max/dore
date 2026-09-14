###### Class com.google.android.gms.measurement.internal.zzit (com.google.android.gms.measurement.internal.zzit)
.class final Lcom/google/android/gms/measurement/internal/zzit;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzjo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjo;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzjo;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzit;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzb:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzit;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzm()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfa;->zzc()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzag;->zzk()Z

    move-result v1

    if-nez v1, :cond_4b

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzl()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v2, "Analytics storage consent denied; will not get app instance id"

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zze;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzia;

    move-result-object v1

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzia;->zzO(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzm()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v1

    .line 9
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfa;->zze:Lcom/google/android/gms/measurement/internal/zzez;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzez;->zzb(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzit;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_44} :catch_aa
    .catchall {:try_start_3 .. :try_end_44} :catchall_a8

    :try_start_44
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzit;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_c7

    return-void

    :cond_4b
    :try_start_4b
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzjo;->zzh(Lcom/google/android/gms/measurement/internal/zzjo;)Lcom/google/android/gms/measurement/internal/zzeb;

    move-result-object v1

    if-nez v1, :cond_6b

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v1

    const-string v2, "Failed to get app instance id"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_64} :catch_aa
    .catchall {:try_start_4b .. :try_end_64} :catchall_a8

    :try_start_64
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzit;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_64 .. :try_end_6a} :catchall_c7

    return-void

    :cond_6b
    :try_start_6b
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzb:Lcom/google/android/gms/measurement/internal/zzp;

    .line 14
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzit;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzb:Lcom/google/android/gms/measurement/internal/zzp;

    .line 15
    invoke-interface {v1, v3}, Lcom/google/android/gms/measurement/internal/zzeb;->zzd(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzit;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_9d

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zze;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzia;

    move-result-object v2

    .line 18
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzia;->zzO(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzm()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v2

    .line 20
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfa;->zze:Lcom/google/android/gms/measurement/internal/zzez;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzez;->zzb(Ljava/lang/String;)V

    :cond_9d
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzjo;

    .line 21
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzjo;->zzp(Lcom/google/android/gms/measurement/internal/zzjo;)V
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_a2} :catch_aa
    .catchall {:try_start_6b .. :try_end_a2} :catchall_a8

    :try_start_a2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzit;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    :goto_a4
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_a7
    .catchall {:try_start_a2 .. :try_end_a7} :catchall_c7

    goto :goto_bf

    :catchall_a8
    move-exception v1

    goto :goto_c1

    :catch_aa
    move-exception v1

    .line 25
    :try_start_ab
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v3, "Failed to get app instance id"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_bc
    .catchall {:try_start_ab .. :try_end_bc} :catchall_a8

    :try_start_bc
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzit;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_a4

    .line 25
    :goto_bf
    monitor-exit v0

    return-void

    .line 11
    :goto_c1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzit;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 24
    throw v1

    :catchall_c7
    move-exception v1

    .line 25
    monitor-exit v0
    :try_end_c9
    .catchall {:try_start_bc .. :try_end_c9} :catchall_c7

    throw v1
.end method
