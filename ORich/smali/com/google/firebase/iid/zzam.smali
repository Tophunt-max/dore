###### Class com.google.firebase.iid.zzam (com.google.firebase.iid.zzam)
.class public final Lcom/google/firebase/iid/zzam;
.super Ljava/lang/Object;


# instance fields
.field private final zzag:Landroid/content/Context;

.field private zzcp:Ljava/lang/String;

.field private zzcq:Ljava/lang/String;

.field private zzcr:I

.field private zzcs:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/firebase/iid/zzam;->zzcs:I

    .line 3
    iput-object p1, p0, Lcom/google/firebase/iid/zzam;->zzag:Landroid/content/Context;

    return-void
.end method

.method public static zza(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;
    .registers 4

    .line 30
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getGcmSenderId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    .line 33
    :cond_b
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1:"

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    return-object p0

    :cond_1c
    const-string v0, ":"

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 37
    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_28

    return-object v2

    :cond_28
    const/4 v0, 0x1

    .line 39
    aget-object p0, p0, v0

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    return-object v2

    :cond_32
    return-object p0
.end method

.method public static zza(Ljava/security/KeyPair;)Ljava/lang/String;
    .registers 4

    .line 43
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    :try_start_8
    const-string v0, "SHA1"

    .line 44
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 45
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const/4 v0, 0x0

    .line 46
    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x70

    int-to-byte v1, v1

    .line 48
    aput-byte v1, p0, v0

    const/16 v1, 0x8

    const/16 v2, 0xb

    .line 49
    invoke-static {p0, v0, v1, v2}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object p0
    :try_end_24
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    const-string p0, "FirebaseInstanceId"

    const-string v0, "Unexpected error, device missing required algorithms"

    .line 51
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private final declared-synchronized zzag()V
    .registers 3

    monitor-enter p0

    .line 64
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/zzam;->zzag:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/zzam;->zze(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 66
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/iid/zzam;->zzcp:Ljava/lang/String;

    .line 67
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/iid/zzam;->zzcq:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 68
    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final zze(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 4

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/iid/zzam;->zzag:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p1

    :catch_c
    move-exception p1

    .line 71
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to find package "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final declared-synchronized zzac()I
    .registers 6

    monitor-enter p0

    .line 5
    :try_start_1
    iget v0, p0, Lcom/google/firebase/iid/zzam;->zzcs:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_78

    if-eqz v0, :cond_7

    .line 6
    monitor-exit p0

    return v0

    .line 7
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/firebase/iid/zzam;->zzag:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.permission.SEND"

    const-string v2, "com.google.android.gms"

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_22

    const-string v0, "FirebaseInstanceId"

    const-string v1, "Google Play services missing or without correct permission."

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_78

    .line 11
    monitor-exit p0

    return v3

    .line 12
    :cond_22
    :try_start_22
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_45

    .line 13
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.google.android.gms"

    .line 14
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 16
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_45

    .line 17
    iput v2, p0, Lcom/google/firebase/iid/zzam;->zzcs:I
    :try_end_43
    .catchall {:try_start_22 .. :try_end_43} :catchall_78

    .line 18
    monitor-exit p0

    return v2

    .line 19
    :cond_45
    :try_start_45
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.google.iid.TOKEN_REQUEST"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.google.android.gms"

    .line 20
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_62

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_62

    .line 23
    iput v1, p0, Lcom/google/firebase/iid/zzam;->zzcs:I
    :try_end_60
    .catchall {:try_start_45 .. :try_end_60} :catchall_78

    .line 24
    monitor-exit p0

    return v1

    :cond_62
    :try_start_62
    const-string v0, "FirebaseInstanceId"

    const-string v3, "Failed to resolve IID implementation package, falling back"

    .line 25
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 27
    iput v1, p0, Lcom/google/firebase/iid/zzam;->zzcs:I

    goto :goto_74

    .line 28
    :cond_72
    iput v2, p0, Lcom/google/firebase/iid/zzam;->zzcs:I

    .line 29
    :goto_74
    iget v0, p0, Lcom/google/firebase/iid/zzam;->zzcs:I
    :try_end_76
    .catchall {:try_start_62 .. :try_end_76} :catchall_78

    monitor-exit p0

    return v0

    :catchall_78
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzad()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 53
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/zzam;->zzcp:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 54
    invoke-direct {p0}, Lcom/google/firebase/iid/zzam;->zzag()V

    .line 55
    :cond_8
    iget-object v0, p0, Lcom/google/firebase/iid/zzam;->zzcp:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzae()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/zzam;->zzcq:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 57
    invoke-direct {p0}, Lcom/google/firebase/iid/zzam;->zzag()V

    .line 58
    :cond_8
    iget-object v0, p0, Lcom/google/firebase/iid/zzam;->zzcq:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzaf()I
    .registers 2

    monitor-enter p0

    .line 59
    :try_start_1
    iget v0, p0, Lcom/google/firebase/iid/zzam;->zzcr:I

    if-nez v0, :cond_11

    const-string v0, "com.google.android.gms"

    .line 60
    invoke-direct {p0, v0}, Lcom/google/firebase/iid/zzam;->zze(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 62
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/google/firebase/iid/zzam;->zzcr:I

    .line 63
    :cond_11
    iget v0, p0, Lcom/google/firebase/iid/zzam;->zzcr:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method
