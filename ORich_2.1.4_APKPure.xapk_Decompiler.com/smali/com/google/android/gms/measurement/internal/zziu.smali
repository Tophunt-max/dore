###### Class com.google.android.gms.measurement.internal.zziu (com.google.android.gms.measurement.internal.zziu)
.class final Lcom/google/android/gms/measurement/internal/zziu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic zzb:Lcom/google/android/gms/internal/measurement/zzcf;

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzjo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjo;Lcom/google/android/gms/measurement/internal/zzp;Lcom/google/android/gms/internal/measurement/zzcf;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzc:Lcom/google/android/gms/measurement/internal/zzjo;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zziu;->zza:Lcom/google/android/gms/measurement/internal/zzp;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzb:Lcom/google/android/gms/internal/measurement/zzcf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const-string v0, "Failed to get app instance id"

    const/4 v1, 0x0

    .line 1
    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzc:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzm()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfa;->zzc()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzag;->zzk()Z

    move-result v2

    if-nez v2, :cond_4c

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzc:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzl()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    const-string v3, "Analytics storage consent denied; will not get app instance id"

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzc:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zze;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzia;

    move-result-object v2

    .line 7
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzia;->zzO(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzc:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzm()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v2

    .line 9
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfa;->zze:Lcom/google/android/gms/measurement/internal/zzez;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzez;->zzb(Ljava/lang/String;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3e} :catch_99
    .catchall {:try_start_3 .. :try_end_3e} :catchall_97

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzc:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 10
    :goto_42
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzb:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzkz;->zzU(Lcom/google/android/gms/internal/measurement/zzcf;Ljava/lang/String;)V

    return-void

    :cond_4c
    :try_start_4c
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzc:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzjo;->zzh(Lcom/google/android/gms/measurement/internal/zzjo;)Lcom/google/android/gms/measurement/internal/zzeb;

    move-result-object v2

    if-nez v2, :cond_68

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzc:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzej;->zza(Ljava/lang/String;)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_63} :catch_99
    .catchall {:try_start_4c .. :try_end_63} :catchall_97

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzc:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    goto :goto_42

    .line 11
    :cond_68
    :try_start_68
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zziu;->zza:Lcom/google/android/gms/measurement/internal/zzp;

    .line 14
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zziu;->zza:Lcom/google/android/gms/measurement/internal/zzp;

    .line 15
    invoke-interface {v2, v3}, Lcom/google/android/gms/measurement/internal/zzeb;->zzd(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8d

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzc:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zze;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzia;

    move-result-object v2

    .line 17
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzia;->zzO(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzc:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzm()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v2

    .line 19
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfa;->zze:Lcom/google/android/gms/measurement/internal/zzez;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzez;->zzb(Ljava/lang/String;)V

    :cond_8d
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzc:Lcom/google/android/gms/measurement/internal/zzjo;

    .line 20
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzjo;->zzp(Lcom/google/android/gms/measurement/internal/zzjo;)V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_92} :catch_99
    .catchall {:try_start_68 .. :try_end_92} :catchall_97

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzc:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    goto :goto_42

    :catchall_97
    move-exception v0

    goto :goto_ae

    :catch_99
    move-exception v2

    .line 11
    :try_start_9a
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzc:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzay()Lcom/google/android/gms/measurement/internal/zzel;

    move-result-object v3

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzel;->zzd()Lcom/google/android/gms/measurement/internal/zzej;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/measurement/internal/zzej;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a9
    .catchall {:try_start_9a .. :try_end_a9} :catchall_97

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzc:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    goto :goto_42

    .line 11
    :goto_ae
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzc:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgo;->zzs:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzv()Lcom/google/android/gms/measurement/internal/zzkz;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzb:Lcom/google/android/gms/internal/measurement/zzcf;

    .line 11
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkz;->zzU(Lcom/google/android/gms/internal/measurement/zzcf;Ljava/lang/String;)V

    .line 23
    throw v0
.end method
