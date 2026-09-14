###### Class com.google.android.gms.measurement.internal.zzjh (com.google.android.gms.measurement.internal.zzjh)
.class final Lcom/google/android/gms/measurement/internal/zzjh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Ljava/lang/String;

.field final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic zze:Z

.field final synthetic zzf:Lcom/google/android/gms/measurement/internal/zzjo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjo;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;Z)V
    .registers 8

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzf:Lcom/google/android/gms/measurement/internal/zzjo;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzc:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzd:Lcom/google/android/gms/measurement/internal/zzp;

    iput-boolean p7, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zze:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzf:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzjo;->zzh(Lcom/google/android/gms/measurement/internal/zzjo;)Lcom/google/android/gms/measurement/internal/zzeb;

    move-result-object v2

    if-nez v2, :cond_31

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzf:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v3, "(legacy) Failed to get user properties; not connected to service"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzc:Ljava/lang/String;

    .line 11
    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/zzej;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2a} :catch_6a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_68

    :try_start_2a
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_92

    return-void

    .line 1
    :cond_31
    :try_start_31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzd:Lcom/google/android/gms/measurement/internal/zzp;

    .line 2
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzc:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zze:Z

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzd:Lcom/google/android/gms/measurement/internal/zzp;

    .line 3
    invoke-interface {v2, v4, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzeb;->zzh(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzp;)Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_5d

    .line 18
    :cond_4e
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzc:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zze:Z

    .line 5
    invoke-interface {v2, v1, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzeb;->zzi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4
    :goto_5d
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzf:Lcom/google/android/gms/measurement/internal/zzjo;

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzjo;->zzp(Lcom/google/android/gms/measurement/internal/zzjo;)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_62} :catch_6a
    .catchall {:try_start_31 .. :try_end_62} :catchall_68

    :try_start_62
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    :goto_64
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_67
    .catchall {:try_start_62 .. :try_end_67} :catchall_92

    goto :goto_8a

    :catchall_68
    move-exception v1

    goto :goto_8c

    :catch_6a
    move-exception v2

    .line 6
    :try_start_6b
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzf:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v3

    const-string v4, "(legacy) Failed to get user properties; remote exception"

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzb:Ljava/lang/String;

    .line 15
    invoke-virtual {v3, v4, v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_87
    .catchall {:try_start_6b .. :try_end_87} :catchall_68

    :try_start_87
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_64

    .line 18
    :goto_8a
    monitor-exit v0

    return-void

    .line 8
    :goto_8c
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 17
    throw v1

    :catchall_92
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_94
    .catchall {:try_start_87 .. :try_end_94} :catchall_92

    throw v1
.end method
