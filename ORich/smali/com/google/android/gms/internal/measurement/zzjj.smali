###### Class com.google.android.gms.internal.measurement.zzjj (com.google.android.gms.internal.measurement.zzjj)
.class public final Lcom/google/android/gms/internal/measurement/zzjj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@20.0.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/measurement/zzjj;

.field private static volatile zzb:Z = false

.field private static volatile zzc:Lcom/google/android/gms/internal/measurement/zzjj;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzjj;


# instance fields
.field private final zze:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/measurement/zzji;",
            "Lcom/google/android/gms/internal/measurement/zzjv<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjj;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjj;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjj;->zza:Lcom/google/android/gms/internal/measurement/zzjj;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjj;->zze:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjj;->zze:Ljava/util/Map;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzjj;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjj;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    if-nez v0, :cond_14

    const-class v1, Lcom/google/android/gms/internal/measurement/zzjj;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjj;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    if-nez v0, :cond_f

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjj;->zza:Lcom/google/android/gms/internal/measurement/zzjj;

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjj;->zzc:Lcom/google/android/gms/internal/measurement/zzjj;

    :cond_f
    monitor-exit v1

    goto :goto_14

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v0

    :cond_14
    :goto_14
    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzjj;
    .registers 2

    .line 3
    const-class v0, Lcom/google/android/gms/internal/measurement/zzjj;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzjj;->zzd:Lcom/google/android/gms/internal/measurement/zzjj;

    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    monitor-enter v0

    :try_start_8
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzjj;->zzd:Lcom/google/android/gms/internal/measurement/zzjj;

    if-eqz v1, :cond_e

    monitor-exit v0

    return-object v1

    .line 1
    :cond_e
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjr;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzjj;->zzd:Lcom/google/android/gms/internal/measurement/zzjj;

    .line 2
    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v1
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/measurement/zzlc;I)Lcom/google/android/gms/internal/measurement/zzjv;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/measurement/zzlc;",
            ">(TContainingType;I)",
            "Lcom/google/android/gms/internal/measurement/zzjv<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjj;->zze:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzji;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/measurement/zzji;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjv;

    return-object p1
.end method
