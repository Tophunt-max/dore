###### Class com.google.android.gms.internal.measurement.zzmd (com.google.android.gms.internal.measurement.zzmd)
.class final Lcom/google/android/gms/internal/measurement/zzmd;
.super Lcom/google/android/gms/internal/measurement/zzmb;
.source "com.google.android.gms:play-services-measurement-base@@20.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzmb<",
        "Lcom/google/android/gms/internal/measurement/zzmc;",
        "Lcom/google/android/gms/internal/measurement/zzmc;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmb;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic zza(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmc;->zza()I

    move-result p1

    return p1
.end method

.method final synthetic zzb(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmc;->zzb()I

    move-result p1

    return p1
.end method

.method final synthetic zzc(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjx;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzjx;->zzc:Lcom/google/android/gms/internal/measurement/zzmc;

    return-object p1
.end method

.method final bridge synthetic zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmc;->zzc()Lcom/google/android/gms/internal/measurement/zzmc;

    move-result-object v0

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzmc;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzmc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-object p1

    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmc;

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzmc;->zzd(Lcom/google/android/gms/internal/measurement/zzmc;Lcom/google/android/gms/internal/measurement/zzmc;)Lcom/google/android/gms/internal/measurement/zzmc;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zze()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmc;->zze()Lcom/google/android/gms/internal/measurement/zzmc;

    move-result-object v0

    return-object v0
.end method

.method final bridge synthetic zzf(Ljava/lang/Object;IJ)V
    .registers 5

    .line 1
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmc;

    shl-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzmc;->zzh(ILjava/lang/Object;)V

    return-void
.end method

.method final zzg(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjx;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzjx;->zzc:Lcom/google/android/gms/internal/measurement/zzmc;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmc;->zzf()V

    return-void
.end method

.method final synthetic zzh(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzmc;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjx;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzjx;->zzc:Lcom/google/android/gms/internal/measurement/zzmc;

    return-void
.end method

.method final synthetic zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjf;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmc;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzmc;->zzi(Lcom/google/android/gms/internal/measurement/zzjf;)V

    return-void
.end method
