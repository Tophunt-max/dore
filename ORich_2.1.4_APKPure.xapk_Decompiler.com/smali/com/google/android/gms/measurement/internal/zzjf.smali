###### Class com.google.android.gms.measurement.internal.zzjf (com.google.android.gms.measurement.internal.zzjf)
.class final Lcom/google/android/gms/measurement/internal/zzjf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Ljava/lang/String;

.field final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic zze:Lcom/google/android/gms/measurement/internal/zzjo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjo;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zze:Lcom/google/android/gms/measurement/internal/zzjo;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zzb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zzc:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zzd:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zze:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzjo;->zzh(Lcom/google/android/gms/measurement/internal/zzjo;)Lcom/google/android/gms/measurement/internal/zzeb;

    move-result-object v2

    if-nez v2, :cond_31

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zze:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v3, "(legacy) Failed to get conditional properties; not connected to service"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zzb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zzc:Ljava/lang/String;

    .line 11
    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/zzej;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2a} :catch_66
    .catchall {:try_start_4 .. :try_end_2a} :catchall_64

    :try_start_2a
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_8e

    return-void

    .line 1
    :cond_31
    :try_start_31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zzd:Lcom/google/android/gms/measurement/internal/zzp;

    .line 2
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zzb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zzc:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zzd:Lcom/google/android/gms/measurement/internal/zzp;

    .line 3
    invoke-interface {v2, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzeb;->zzf(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;)Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_59

    .line 18
    :cond_4c
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zzb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zzc:Ljava/lang/String;

    .line 5
    invoke-interface {v2, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/zzeb;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4
    :goto_59
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zze:Lcom/google/android/gms/measurement/internal/zzjo;

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzjo;->zzp(Lcom/google/android/gms/measurement/internal/zzjo;)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_5e} :catch_66
    .catchall {:try_start_31 .. :try_end_5e} :catchall_64

    :try_start_5e
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    :goto_60
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_63
    .catchall {:try_start_5e .. :try_end_63} :catchall_8e

    goto :goto_86

    :catchall_64
    move-exception v1

    goto :goto_88

    :catch_66
    move-exception v2

    .line 6
    :try_start_67
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zze:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v3

    const-string v4, "(legacy) Failed to get conditional properties; remote exception"

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zzb:Ljava/lang/String;

    .line 15
    invoke-virtual {v3, v4, v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_83
    .catchall {:try_start_67 .. :try_end_83} :catchall_64

    :try_start_83
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_60

    .line 18
    :goto_86
    monitor-exit v0

    return-void

    .line 8
    :goto_88
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 17
    throw v1

    :catchall_8e
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_83 .. :try_end_90} :catchall_8e

    throw v1
.end method
