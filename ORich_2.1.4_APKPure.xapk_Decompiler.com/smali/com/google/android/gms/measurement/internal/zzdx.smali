###### Class com.google.android.gms.measurement.internal.zzdx (com.google.android.gms.measurement.internal.zzdx)
.class public final Lcom/google/android/gms/measurement/internal/zzdx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zza:Ljava/lang/Object;


# instance fields
.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/measurement/internal/zzdu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/measurement/internal/zzdu<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final zzd:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final zze:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final zzf:Ljava/lang/Object;

.field private volatile zzg:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private volatile zzh:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzdx;->zza:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/measurement/internal/zzdu;Lcom/google/android/gms/measurement/internal/zzdw;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzdx;->zzf:Ljava/lang/Object;

    const/4 p5, 0x0

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzdx;->zzg:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzdx;->zzh:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdx;->zzb:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdx;->zzd:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzdx;->zze:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzdx;->zzc:Lcom/google/android/gms/measurement/internal/zzdu;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdx;->zzf:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_6e

    if-eqz p1, :cond_7

    return-object p1

    :cond_7
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzdv;->zza:Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz p1, :cond_6b

    sget-object p1, Lcom/google/android/gms/measurement/internal/zzdx;->zza:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_e
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaa;->zza()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdx;->zzh:Ljava/lang/Object;

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdx;->zzd:Ljava/lang/Object;

    goto :goto_1d

    .line 3
    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdx;->zzh:Ljava/lang/Object;

    :goto_1d
    monitor-exit p1

    return-object v0

    .line 4
    :cond_1f
    monitor-exit p1
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_68

    .line 5
    :try_start_20
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzdy;->zzb()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzdx;

    .line 6
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaa;->zza()Z

    move-result v1
    :try_end_38
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_38} :catch_55

    if-nez v1, :cond_4d

    const/4 v1, 0x0

    .line 9
    :try_start_3b
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzdx;->zzc:Lcom/google/android/gms/measurement/internal/zzdu;

    if-eqz v2, :cond_43

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/measurement/internal/zzdu;->zza()Ljava/lang/Object;

    move-result-object v1
    :try_end_43
    .catch Ljava/lang/IllegalStateException; {:try_start_3b .. :try_end_43} :catch_43
    .catch Ljava/lang/SecurityException; {:try_start_3b .. :try_end_43} :catch_55

    :catch_43
    :cond_43
    :try_start_43
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzdx;->zza:Ljava/lang/Object;

    monitor-enter v2
    :try_end_46
    .catch Ljava/lang/SecurityException; {:try_start_43 .. :try_end_46} :catch_55

    :try_start_46
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzdx;->zzh:Ljava/lang/Object;

    .line 8
    monitor-exit v2

    goto :goto_28

    :catchall_4a
    move-exception p1

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw p1

    .line 6
    :cond_4d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Refreshing flag cache must be done on a worker thread."

    .line 9
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_55
    .catch Ljava/lang/SecurityException; {:try_start_4c .. :try_end_55} :catch_55

    :catch_55
    nop

    .line 8
    :cond_56
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdx;->zzc:Lcom/google/android/gms/measurement/internal/zzdu;

    if-nez p1, :cond_5d

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdx;->zzd:Ljava/lang/Object;

    return-object p1

    .line 10
    :cond_5d
    :try_start_5d
    invoke-interface {p1}, Lcom/google/android/gms/measurement/internal/zzdu;->zza()Ljava/lang/Object;

    move-result-object p1
    :try_end_61
    .catch Ljava/lang/SecurityException; {:try_start_5d .. :try_end_61} :catch_65
    .catch Ljava/lang/IllegalStateException; {:try_start_5d .. :try_end_61} :catch_62

    return-object p1

    .line 8
    :catch_62
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdx;->zzd:Ljava/lang/Object;

    return-object p1

    :catch_65
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdx;->zzd:Ljava/lang/Object;

    return-object p1

    :catchall_68
    move-exception v0

    .line 4
    :try_start_69
    monitor-exit p1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v0

    .line 10
    :cond_6b
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdx;->zzd:Ljava/lang/Object;

    return-object p1

    :catchall_6e
    move-exception p1

    .line 1
    :try_start_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw p1
.end method

.method public final zzb()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdx;->zzb:Ljava/lang/String;

    return-object v0
.end method
