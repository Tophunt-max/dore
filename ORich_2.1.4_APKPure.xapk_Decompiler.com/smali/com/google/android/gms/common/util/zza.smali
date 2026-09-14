###### Class com.google.android.gms.common.util.zza (com.google.android.gms.common.util.zza)
.class public final Lcom/google/android/gms/common/util/zza;
.super Ljava/lang/Object;


# static fields
.field private static final filter:Landroid/content/IntentFilter;

.field private static zzgv:J

.field private static zzgw:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/util/zza;->filter:Landroid/content/IntentFilter;

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 27
    sput v0, Lcom/google/android/gms/common/util/zza;->zzgw:F

    return-void
.end method

.method public static zzg(Landroid/content/Context;)I
    .registers 5

    const/4 v0, -0x1

    if-eqz p0, :cond_47

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_47

    .line 3
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/common/util/zza;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    const/4 v1, 0x0

    goto :goto_20

    :cond_1a
    const-string v3, "plugged"

    .line 4
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :goto_20
    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    const-string v3, "power"

    .line 6
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-nez p0, :cond_32

    return v0

    .line 10
    :cond_32
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKatWatch()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 11
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    goto :goto_41

    .line 12
    :cond_3d
    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p0

    :goto_41
    if-eqz p0, :cond_44

    const/4 v2, 0x2

    :cond_44
    or-int p0, v2, v1

    return p0

    :cond_47
    :goto_47
    return v0
.end method

.method public static declared-synchronized zzh(Landroid/content/Context;)F
    .registers 7

    const-class v0, Lcom/google/android/gms/common/util/zza;

    monitor-enter v0

    .line 16
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/google/android/gms/common/util/zza;->zzgv:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    cmp-long v5, v1, v3

    if-gez v5, :cond_1d

    sget v1, Lcom/google/android/gms/common/util/zza;->zzgw:F

    .line 17
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 18
    sget p0, Lcom/google/android/gms/common/util/zza;->zzgw:F
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_46

    monitor-exit v0

    return p0

    .line 19
    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/common/util/zza;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_3c

    const-string v1, "level"

    const/4 v2, -0x1

    .line 21
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "scale"

    .line 22
    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    int-to-float v1, v1

    int-to-float p0, p0

    div-float/2addr v1, p0

    .line 23
    sput v1, Lcom/google/android/gms/common/util/zza;->zzgw:F

    .line 24
    :cond_3c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/gms/common/util/zza;->zzgv:J

    .line 25
    sget p0, Lcom/google/android/gms/common/util/zza;->zzgw:F
    :try_end_44
    .catchall {:try_start_1d .. :try_end_44} :catchall_46

    monitor-exit v0

    return p0

    :catchall_46
    move-exception p0

    monitor-exit v0

    throw p0
.end method
