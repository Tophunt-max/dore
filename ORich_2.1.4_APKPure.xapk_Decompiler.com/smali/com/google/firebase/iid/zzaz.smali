###### Class com.google.firebase.iid.zzaz (com.google.firebase.iid.zzaz)
.class final Lcom/google/firebase/iid/zzaz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzay:Lcom/google/firebase/iid/zzba;

.field private final zzdq:J

.field private final zzdr:Landroid/os/PowerManager$WakeLock;

.field private final zzds:Lcom/google/firebase/iid/FirebaseInstanceId;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/zzam;Lcom/google/firebase/iid/zzba;J)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/iid/zzaz;->zzds:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 3
    iput-object p3, p0, Lcom/google/firebase/iid/zzaz;->zzay:Lcom/google/firebase/iid/zzba;

    .line 4
    iput-wide p4, p0, Lcom/google/firebase/iid/zzaz;->zzdq:J

    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/iid/zzaz;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p2, 0x1

    const-string p3, "fiid-sync"

    .line 6
    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/zzaz;->zzdr:Landroid/os/PowerManager$WakeLock;

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method private final zzan()Z
    .registers 8

    const-string v0, "FirebaseInstanceId"

    .line 32
    iget-object v1, p0, Lcom/google/firebase/iid/zzaz;->zzds:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzk()Lcom/google/firebase/iid/zzaw;

    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/google/firebase/iid/zzaz;->zzds:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzr()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/google/firebase/iid/zzaz;->zzds:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v2, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Lcom/google/firebase/iid/zzaw;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v3

    :cond_1a
    const/4 v2, 0x0

    .line 35
    :try_start_1b
    iget-object v4, p0, Lcom/google/firebase/iid/zzaz;->zzds:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v4}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzl()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_29

    const-string v1, "Token retrieval failed: null"

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_29
    const/4 v5, 0x3

    .line 39
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_35

    const-string v5, "Token successfully retrieved"

    .line 40
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    if-eqz v1, :cond_41

    if-eqz v1, :cond_5e

    .line 41
    iget-object v1, v1, Lcom/google/firebase/iid/zzaw;->zzbx:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 43
    :cond_41
    invoke-virtual {p0}, Lcom/google/firebase/iid/zzaz;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 44
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.google.firebase.messaging.NEW_TOKEN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "token"

    .line 45
    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-static {v1, v5}, Lcom/google/firebase/iid/zzau;->zzc(Landroid/content/Context;Landroid/content/Intent;)V

    .line 47
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.firebase.iid.TOKEN_REFRESH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-static {v1, v4}, Lcom/google/firebase/iid/zzau;->zzb(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_5e} :catch_61
    .catch Ljava/lang/SecurityException; {:try_start_1b .. :try_end_5e} :catch_5f

    :cond_5e
    return v3

    :catch_5f
    move-exception v1

    goto :goto_62

    :catch_61
    move-exception v1

    :goto_62
    const-string v3, "Token retrieval failed: "

    .line 51
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_77

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7c

    :cond_77
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7c
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method


# virtual methods
.method final getContext()Landroid/content/Context;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/google/firebase/iid/zzaz;->zzds:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzi()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final run()V
    .registers 4

    .line 9
    :try_start_0
    invoke-static {}, Lcom/google/firebase/iid/zzau;->zzai()Lcom/google/firebase/iid/zzau;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzaz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzau;->zzd(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 10
    iget-object v0, p0, Lcom/google/firebase/iid/zzaz;->zzdr:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 11
    :cond_13
    iget-object v0, p0, Lcom/google/firebase/iid/zzaz;->zzds:Lcom/google/firebase/iid/FirebaseInstanceId;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Z)V

    .line 12
    iget-object v0, p0, Lcom/google/firebase/iid/zzaz;->zzds:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzo()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3b

    .line 13
    iget-object v0, p0, Lcom/google/firebase/iid/zzaz;->zzds:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Z)V
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_9c

    .line 14
    invoke-static {}, Lcom/google/firebase/iid/zzau;->zzai()Lcom/google/firebase/iid/zzau;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzaz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzau;->zzd(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 15
    iget-object v0, p0, Lcom/google/firebase/iid/zzaz;->zzdr:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3a
    return-void

    .line 17
    :cond_3b
    :try_start_3b
    invoke-static {}, Lcom/google/firebase/iid/zzau;->zzai()Lcom/google/firebase/iid/zzau;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzaz;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firebase/iid/zzau;->zze(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 18
    invoke-virtual {p0}, Lcom/google/firebase/iid/zzaz;->zzao()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 19
    new-instance v0, Lcom/google/firebase/iid/zzay;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/zzay;-><init>(Lcom/google/firebase/iid/zzaz;)V

    .line 20
    invoke-virtual {v0}, Lcom/google/firebase/iid/zzay;->zzam()V
    :try_end_57
    .catchall {:try_start_3b .. :try_end_57} :catchall_9c

    .line 21
    invoke-static {}, Lcom/google/firebase/iid/zzau;->zzai()Lcom/google/firebase/iid/zzau;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzaz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzau;->zzd(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 22
    iget-object v0, p0, Lcom/google/firebase/iid/zzaz;->zzdr:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_6a
    return-void

    .line 24
    :cond_6b
    :try_start_6b
    invoke-direct {p0}, Lcom/google/firebase/iid/zzaz;->zzan()Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/google/firebase/iid/zzaz;->zzay:Lcom/google/firebase/iid/zzba;

    iget-object v2, p0, Lcom/google/firebase/iid/zzaz;->zzds:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0, v2}, Lcom/google/firebase/iid/zzba;->zzc(Lcom/google/firebase/iid/FirebaseInstanceId;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 25
    iget-object v0, p0, Lcom/google/firebase/iid/zzaz;->zzds:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Z)V

    goto :goto_88

    .line 26
    :cond_81
    iget-object v0, p0, Lcom/google/firebase/iid/zzaz;->zzds:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-wide v1, p0, Lcom/google/firebase/iid/zzaz;->zzdq:J

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(J)V
    :try_end_88
    .catchall {:try_start_6b .. :try_end_88} :catchall_9c

    .line 27
    :goto_88
    invoke-static {}, Lcom/google/firebase/iid/zzau;->zzai()Lcom/google/firebase/iid/zzau;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzaz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzau;->zzd(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 28
    iget-object v0, p0, Lcom/google/firebase/iid/zzaz;->zzdr:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_9b
    return-void

    :catchall_9c
    move-exception v0

    .line 29
    invoke-static {}, Lcom/google/firebase/iid/zzau;->zzai()Lcom/google/firebase/iid/zzau;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzaz;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/iid/zzau;->zzd(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 30
    iget-object v1, p0, Lcom/google/firebase/iid/zzaz;->zzdr:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_b0
    throw v0
.end method

.method final zzao()Z
    .registers 3

    .line 55
    invoke-virtual {p0}, Lcom/google/firebase/iid/zzaz;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_13

    .line 56
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_1e

    .line 57
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method
