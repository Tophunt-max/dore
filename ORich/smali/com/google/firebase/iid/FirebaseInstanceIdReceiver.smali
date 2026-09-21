###### Class com.google.firebase.iid.FirebaseInstanceIdReceiver (com.google.firebase.iid.FirebaseInstanceIdReceiver)
.class public final Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;
.super Landroidx/legacy/content/WakefulBroadcastReceiver;


# static fields
.field private static zzbl:Z = false

.field private static zzbm:Lcom/google/firebase/iid/zzi;

.field private static zzbn:Lcom/google/firebase/iid/zzi;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/legacy/content/WakefulBroadcastReceiver;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/BroadcastReceiver;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)I
    .registers 9

    .line 34
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 36
    :goto_15
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x10000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    if-eqz v0, :cond_29

    if-nez v1, :cond_29

    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->zzb(Landroid/content/BroadcastReceiver;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)I

    move-result p0

    return p0

    .line 39
    :cond_29
    invoke-static {}, Lcom/google/firebase/iid/zzau;->zzai()Lcom/google/firebase/iid/zzau;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/iid/zzau;->zzb(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v0

    .line 40
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v1

    if-eqz v1, :cond_41

    const/16 v1, 0x192

    if-ne v0, v1, :cond_41

    .line 41
    invoke-static {p0, p1, p2, p3}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->zzb(Landroid/content/BroadcastReceiver;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)I

    const/16 p0, 0x193

    return p0

    :cond_41
    return v0
.end method

.method private static declared-synchronized zza(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzi;
    .registers 4

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;

    monitor-enter v0

    :try_start_3
    const-string v1, "com.google.firebase.MESSAGING_EVENT"

    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 51
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->zzbn:Lcom/google/firebase/iid/zzi;

    if-nez v1, :cond_16

    .line 52
    new-instance v1, Lcom/google/firebase/iid/zzi;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/iid/zzi;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->zzbn:Lcom/google/firebase/iid/zzi;

    .line 53
    :cond_16
    sget-object p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->zzbn:Lcom/google/firebase/iid/zzi;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_29

    monitor-exit v0

    return-object p0

    .line 54
    :cond_1a
    :try_start_1a
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->zzbm:Lcom/google/firebase/iid/zzi;

    if-nez v1, :cond_25

    .line 55
    new-instance v1, Lcom/google/firebase/iid/zzi;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/iid/zzi;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->zzbm:Lcom/google/firebase/iid/zzi;

    .line 56
    :cond_25
    sget-object p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->zzbm:Lcom/google/firebase/iid/zzi;
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_29

    monitor-exit v0

    return-object p0

    :catchall_29
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final zza(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_18

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    :cond_18
    const-string v1, "gcm.rawData64"

    .line 16
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2d

    const/4 v3, 0x0

    .line 18
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    const-string v3, "rawData"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 19
    invoke-virtual {p2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_2d
    const-string v1, "from"

    .line 21
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "google.com/iid"

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "com.google.firebase.MESSAGING_EVENT"

    const-string v3, "com.google.firebase.INSTANCE_ID_EVENT"

    if-nez v1, :cond_5f

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    goto :goto_5f

    :cond_46
    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    .line 24
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 25
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_55

    goto :goto_5d

    :cond_55
    const-string p3, "FirebaseInstanceId"

    const-string v1, "Unexpected intent"

    .line 27
    invoke-static {p3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    :cond_5d
    :goto_5d
    move-object v0, v2

    goto :goto_60

    :cond_5f
    :goto_5f
    move-object v0, v3

    :goto_60
    const/4 p3, -0x1

    if-eqz v0, :cond_67

    .line 30
    invoke-static {p0, p1, v0, p2}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->zza(Landroid/content/BroadcastReceiver;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)I

    move-result p3

    .line 31
    :cond_67
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->isOrderedBroadcast()Z

    move-result p1

    if-eqz p1, :cond_70

    .line 32
    invoke-virtual {p0, p3}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->setResultCode(I)V

    :cond_70
    return-void
.end method

.method private static zzb(Landroid/content/BroadcastReceiver;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)I
    .registers 8

    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "Binding to service: "

    .line 45
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_1a
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_20
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_23
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2d

    .line 47
    invoke-virtual {p0, v1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 48
    :cond_2d
    invoke-static {p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->zza(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzi;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Lcom/google/firebase/iid/zzi;->zza(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    return v1
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string v0, "wrapped_intent"

    .line 5
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 6
    instance-of v1, v0, Landroid/content/Intent;

    if-eqz v1, :cond_10

    check-cast v0, Landroid/content/Intent;

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_1b

    .line 9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->zza(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->zza(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
