###### Class com.google.android.gms.internal.measurement.zzga (com.google.android.gms.internal.measurement.zzga)
.class final Lcom/google/android/gms/internal/measurement/zzga;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@20.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzkb;


# static fields
.field static final zza:Lcom/google/android/gms/internal/measurement/zzkb;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzga;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzga;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzga;->zza:Lcom/google/android/gms/internal/measurement/zzkb;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v1, 0x2

    if-eq p1, v1, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    return v0
.end method
