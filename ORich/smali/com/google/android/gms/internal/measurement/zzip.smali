###### Class com.google.android.gms.internal.measurement.zzip (com.google.android.gms.internal.measurement.zzip)
.class public final synthetic Lcom/google/android/gms/internal/measurement/zzip;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@20.0.0"


# direct methods
.method public static synthetic zza(II)I
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    goto :goto_7

    :cond_4
    if-lt p0, p1, :cond_8

    const/4 p0, 0x1

    :goto_7
    return p0

    :cond_8
    const/4 p0, -0x1

    return p0
.end method
