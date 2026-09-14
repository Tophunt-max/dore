###### Class com.google.firebase.iid.zzg (com.google.firebase.iid.zzg)
.class public final Lcom/google/firebase/iid/zzg;
.super Landroid/os/Binder;


# instance fields
.field private final zzae:Lcom/google/firebase/iid/zzc;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzc;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/iid/zzg;->zzae:Lcom/google/firebase/iid/zzc;

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/iid/zzg;)Lcom/google/firebase/iid/zzc;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/google/firebase/iid/zzg;->zzae:Lcom/google/firebase/iid/zzc;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/firebase/iid/zze;)V
    .registers 6

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_3e

    const-string v0, "EnhancedIntentService"

    const/4 v1, 0x3

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "service received new intent via bind strategy"

    .line 7
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_18
    iget-object v2, p0, Lcom/google/firebase/iid/zzg;->zzae:Lcom/google/firebase/iid/zzc;

    iget-object v3, p1, Lcom/google/firebase/iid/zze;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/google/firebase/iid/zzc;->zzc(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/iid/zze;->finish()V

    return-void

    .line 10
    :cond_26
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "intent being queued for bg execution"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_31
    iget-object v0, p0, Lcom/google/firebase/iid/zzg;->zzae:Lcom/google/firebase/iid/zzc;

    iget-object v0, v0, Lcom/google/firebase/iid/zzc;->zzt:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/firebase/iid/zzf;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/iid/zzf;-><init>(Lcom/google/firebase/iid/zzg;Lcom/google/firebase/iid/zze;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 5
    :cond_3e
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Binding only allowed within app"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
