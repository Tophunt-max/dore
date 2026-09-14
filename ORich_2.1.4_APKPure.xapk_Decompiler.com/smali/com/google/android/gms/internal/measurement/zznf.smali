###### Class com.google.android.gms.internal.measurement.zznf (com.google.android.gms.internal.measurement.zznf)
.class public final Lcom/google/android/gms/internal/measurement/zznf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzib;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzib<",
        "Lcom/google/android/gms/internal/measurement/zzng;",
        ">;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zznf;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzib;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzib<",
            "Lcom/google/android/gms/internal/measurement/zzng;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zznf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zznf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zznh;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zza(Lcom/google/android/gms/internal/measurement/zzib;)Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zznf;->zzb:Lcom/google/android/gms/internal/measurement/zzib;

    return-void
.end method

.method public static zzA()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzz()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzB()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzA()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzC()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzB()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzD()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzC()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzE()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzD()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzF()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzE()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzG()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzF()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzI()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzJ()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzH()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzK()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzb()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zza()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzc()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzd()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzc()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zze()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzd()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzf()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zze()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzg()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzf()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzh()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzg()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzi()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzh()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzj()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzi()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzk()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzj()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzl()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzk()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzm()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzl()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzn()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzm()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzo()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzn()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzp()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzo()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzq()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzp()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzr()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzq()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzs()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzr()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzt()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzs()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzu()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzt()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzv()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzu()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzw()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzv()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzx()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzw()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzy()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzx()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzz()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznf;->zza:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzng;->zzy()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final zzH()Lcom/google/android/gms/internal/measurement/zzng;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznf;->zzb:Lcom/google/android/gms/internal/measurement/zzib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzng;

    return-object v0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zznf;->zzH()Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    return-object v0
.end method
