###### Class com.google.android.gms.internal.measurement.zzas (com.google.android.gms.internal.measurement.zzas)
.class final Lcom/google/android/gms/internal/measurement/zzas;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@20.0.0"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/android/gms/internal/measurement/zzap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/measurement/zzat;

.field private zzb:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzat;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzas;->zza:Lcom/google/android/gms/internal/measurement/zzat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzas;->zzb:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzas;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzas;->zza:Lcom/google/android/gms/internal/measurement/zzat;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzat;->zzb(Lcom/google/android/gms/internal/measurement/zzat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzas;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzas;->zza:Lcom/google/android/gms/internal/measurement/zzat;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzat;->zzb(Lcom/google/android/gms/internal/measurement/zzat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_28

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzat;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzas;->zza:Lcom/google/android/gms/internal/measurement/zzat;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzat;->zzb(Lcom/google/android/gms/internal/measurement/zzat;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzas;->zzb:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/measurement/zzas;->zzb:I

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzat;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1
    :cond_28
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
