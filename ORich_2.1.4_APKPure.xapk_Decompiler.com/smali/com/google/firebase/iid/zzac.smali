###### Class com.google.firebase.iid.zzac (com.google.firebase.iid.zzac)
.class final Lcom/google/firebase/iid/zzac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field state:I

.field final zzce:Landroid/os/Messenger;

.field zzcf:Lcom/google/firebase/iid/zzaj;

.field final zzcg:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/firebase/iid/zzal<",
            "*>;>;"
        }
    .end annotation
.end field

.field final zzch:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/firebase/iid/zzal<",
            "*>;>;"
        }
    .end annotation
.end field

.field final synthetic zzci:Lcom/google/firebase/iid/zzab;


# direct methods
.method private constructor <init>(Lcom/google/firebase/iid/zzab;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/firebase/iid/zzac;->zzci:Lcom/google/firebase/iid/zzab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/firebase/iid/zzac;->state:I

    .line 3
    new-instance p1, Landroid/os/Messenger;

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zze;

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/iid/zzaf;

    invoke-direct {v2, p0}, Lcom/google/firebase/iid/zzaf;-><init>(Lcom/google/firebase/iid/zzac;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zze;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/firebase/iid/zzac;->zzce:Landroid/os/Messenger;

    .line 5
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzac;->zzcg:Ljava/util/Queue;

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzac;->zzch:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/iid/zzab;Lcom/google/firebase/iid/zzad;)V
    .registers 3

    .line 106
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzac;-><init>(Lcom/google/firebase/iid/zzab;)V

    return-void
.end method

.method private final zzy()V
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/google/firebase/iid/zzac;->zzci:Lcom/google/firebase/iid/zzab;

    invoke-static {v0}, Lcom/google/firebase/iid/zzab;->zzb(Lcom/google/firebase/iid/zzab;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/iid/zzah;

    invoke-direct {v1, p0}, Lcom/google/firebase/iid/zzah;-><init>(Lcom/google/firebase/iid/zzac;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string p1, "MessengerIpcClient"

    const/4 v0, 0x2

    .line 47
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "MessengerIpcClient"

    const-string v1, "Service connected"

    .line 48
    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/4 p1, 0x0

    if-nez p2, :cond_1b

    const-string p2, "Null service connection"

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/iid/zzac;->zza(ILjava/lang/String;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_33

    .line 51
    monitor-exit p0

    return-void

    .line 52
    :cond_1b
    :try_start_1b
    new-instance v1, Lcom/google/firebase/iid/zzaj;

    invoke-direct {v1, p2}, Lcom/google/firebase/iid/zzaj;-><init>(Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/google/firebase/iid/zzac;->zzcf:Lcom/google/firebase/iid/zzaj;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_29
    .catchall {:try_start_1b .. :try_end_22} :catchall_33

    .line 57
    :try_start_22
    iput v0, p0, Lcom/google/firebase/iid/zzac;->state:I

    .line 58
    invoke-direct {p0}, Lcom/google/firebase/iid/zzac;->zzy()V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_33

    .line 59
    monitor-exit p0

    return-void

    :catch_29
    move-exception p2

    .line 55
    :try_start_2a
    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/iid/zzac;->zza(ILjava/lang/String;)V
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_33

    .line 56
    monitor-exit p0

    return-void

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string p1, "MessengerIpcClient"

    const/4 v0, 0x2

    .line 62
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "MessengerIpcClient"

    const-string v1, "Service disconnected"

    .line 63
    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const-string p1, "Service disconnected"

    .line 64
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/iid/zzac;->zza(ILjava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 65
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zza(I)V
    .registers 6

    monitor-enter p0

    .line 99
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/zzac;->zzch:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/zzal;

    if-eqz v0, :cond_36

    const-string v1, "MessengerIpcClient"

    const/16 v2, 0x1f

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Timing out request: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lcom/google/firebase/iid/zzac;->zzch:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 103
    new-instance p1, Lcom/google/firebase/iid/zzak;

    const/4 v1, 0x3

    const-string v2, "Timed out waiting for response"

    invoke-direct {p1, v1, v2}, Lcom/google/firebase/iid/zzak;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzal;->zza(Lcom/google/firebase/iid/zzak;)V

    .line 104
    invoke-virtual {p0}, Lcom/google/firebase/iid/zzac;->zzz()V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    .line 105
    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zza(ILjava/lang/String;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "MessengerIpcClient"

    const-string v2, "Disconnected: "

    .line 67
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_23

    :cond_1d
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_23
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_26
    iget v0, p0, Lcom/google/firebase/iid/zzac;->state:I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_b8

    if-eqz v0, :cond_b2

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-eq v0, v3, :cond_56

    if-eq v0, v2, :cond_56

    if-eq v0, v1, :cond_52

    if-ne v0, v4, :cond_37

    .line 86
    monitor-exit p0

    return-void

    .line 87
    :cond_37
    :try_start_37
    new-instance p1, Ljava/lang/IllegalStateException;

    iget p2, p0, Lcom/google/firebase/iid/zzac;->state:I

    const/16 v0, 0x1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown state: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_52
    iput v4, p0, Lcom/google/firebase/iid/zzac;->state:I
    :try_end_54
    .catchall {:try_start_37 .. :try_end_54} :catchall_b8

    .line 85
    monitor-exit p0

    return-void

    :cond_56
    :try_start_56
    const-string v0, "MessengerIpcClient"

    .line 70
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_65

    const-string v0, "MessengerIpcClient"

    const-string v1, "Unbinding service"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_65
    iput v4, p0, Lcom/google/firebase/iid/zzac;->state:I

    .line 73
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/zzac;->zzci:Lcom/google/firebase/iid/zzab;

    invoke-static {v1}, Lcom/google/firebase/iid/zzab;->zza(Lcom/google/firebase/iid/zzab;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 74
    new-instance v0, Lcom/google/firebase/iid/zzak;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/iid/zzak;-><init>(ILjava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/google/firebase/iid/zzac;->zzcg:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/iid/zzal;

    .line 76
    invoke-virtual {p2, v0}, Lcom/google/firebase/iid/zzal;->zza(Lcom/google/firebase/iid/zzak;)V

    goto :goto_7f

    .line 78
    :cond_8f
    iget-object p1, p0, Lcom/google/firebase/iid/zzac;->zzcg:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    const/4 p1, 0x0

    .line 79
    :goto_95
    iget-object p2, p0, Lcom/google/firebase/iid/zzac;->zzch:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_ab

    .line 80
    iget-object p2, p0, Lcom/google/firebase/iid/zzac;->zzch:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/iid/zzal;

    invoke-virtual {p2, v0}, Lcom/google/firebase/iid/zzal;->zza(Lcom/google/firebase/iid/zzak;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_95

    .line 82
    :cond_ab
    iget-object p1, p0, Lcom/google/firebase/iid/zzac;->zzch:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V
    :try_end_b0
    .catchall {:try_start_56 .. :try_end_b0} :catchall_b8

    .line 83
    monitor-exit p0

    return-void

    .line 69
    :cond_b2
    :try_start_b2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_b8
    .catchall {:try_start_b2 .. :try_end_b8} :catchall_b8

    :catchall_b8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final zza(Landroid/os/Message;)Z
    .registers 6

    .line 30
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v1, "MessengerIpcClient"

    const/4 v2, 0x3

    .line 31
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "MessengerIpcClient"

    const/16 v2, 0x29

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Received response to request: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_23
    monitor-enter p0

    .line 34
    :try_start_24
    iget-object v1, p0, Lcom/google/firebase/iid/zzac;->zzch:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/iid/zzal;

    const/4 v2, 0x1

    if-nez v1, :cond_49

    const-string p1, "MessengerIpcClient"

    const/16 v1, 0x32

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Received response for unknown request: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    monitor-exit p0

    return v2

    .line 38
    :cond_49
    iget-object v3, p0, Lcom/google/firebase/iid/zzac;->zzch:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 39
    invoke-virtual {p0}, Lcom/google/firebase/iid/zzac;->zzz()V

    .line 40
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_24 .. :try_end_52} :catchall_6f

    .line 41
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "unsupported"

    const/4 v3, 0x0

    .line 42
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 43
    new-instance p1, Lcom/google/firebase/iid/zzak;

    const/4 v0, 0x4

    const-string v3, "Not supported by GmsCore"

    invoke-direct {p1, v0, v3}, Lcom/google/firebase/iid/zzak;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/google/firebase/iid/zzal;->zza(Lcom/google/firebase/iid/zzak;)V

    goto :goto_6e

    .line 45
    :cond_6b
    invoke-virtual {v1, p1}, Lcom/google/firebase/iid/zzal;->zzb(Landroid/os/Bundle;)V

    :goto_6e
    return v2

    :catchall_6f
    move-exception p1

    .line 40
    :try_start_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw p1
.end method

.method final declared-synchronized zzaa()V
    .registers 3

    monitor-enter p0

    .line 96
    :try_start_1
    iget v0, p0, Lcom/google/firebase/iid/zzac;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const-string v0, "Timed out while binding"

    .line 97
    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/iid/zzac;->zza(ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 98
    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized zzb(Lcom/google/firebase/iid/zzal;)Z
    .registers 7

    monitor-enter p0

    .line 7
    :try_start_1
    iget v0, p0, Lcom/google/firebase/iid/zzac;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_41

    if-eq v0, v3, :cond_3a

    if-eq v0, v1, :cond_30

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2e

    const/4 p1, 0x4

    if-ne v0, p1, :cond_13

    goto :goto_2e

    .line 29
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    iget v0, p0, Lcom/google/firebase/iid/zzac;->state:I

    const/16 v1, 0x1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown state: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_97

    .line 28
    :cond_2e
    :goto_2e
    monitor-exit p0

    return v2

    .line 25
    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/google/firebase/iid/zzac;->zzcg:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-direct {p0}, Lcom/google/firebase/iid/zzac;->zzy()V
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_97

    .line 27
    monitor-exit p0

    return v3

    .line 23
    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lcom/google/firebase/iid/zzac;->zzcg:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_97

    .line 24
    monitor-exit p0

    return v3

    .line 8
    :cond_41
    :try_start_41
    iget-object v0, p0, Lcom/google/firebase/iid/zzac;->zzcg:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 10
    iget p1, p0, Lcom/google/firebase/iid/zzac;->state:I

    if-nez p1, :cond_4c

    const/4 p1, 0x1

    goto :goto_4d

    :cond_4c
    const/4 p1, 0x0

    :goto_4d
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    const-string p1, "MessengerIpcClient"

    .line 11
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_5f

    const-string p1, "MessengerIpcClient"

    const-string v0, "Starting bind to GmsCore"

    .line 12
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_5f
    iput v3, p0, Lcom/google/firebase/iid/zzac;->state:I

    .line 14
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.google.android.gms"

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/zzac;->zzci:Lcom/google/firebase/iid/zzab;

    .line 17
    invoke-static {v1}, Lcom/google/firebase/iid/zzab;->zza(Lcom/google/firebase/iid/zzab;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p0, v3}, Lcom/google/android/gms/common/stats/ConnectionTracker;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_83

    const-string p1, "Unable to bind to service"

    .line 18
    invoke-virtual {p0, v2, p1}, Lcom/google/firebase/iid/zzac;->zza(ILjava/lang/String;)V

    goto :goto_95

    .line 20
    :cond_83
    iget-object p1, p0, Lcom/google/firebase/iid/zzac;->zzci:Lcom/google/firebase/iid/zzab;

    .line 21
    invoke-static {p1}, Lcom/google/firebase/iid/zzab;->zzb(Lcom/google/firebase/iid/zzab;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/iid/zzae;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/zzae;-><init>(Lcom/google/firebase/iid/zzac;)V

    const-wide/16 v1, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_95
    .catchall {:try_start_41 .. :try_end_95} :catchall_97

    .line 22
    :goto_95
    monitor-exit p0

    return v3

    :catchall_97
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zzz()V
    .registers 3

    monitor-enter p0

    .line 88
    :try_start_1
    iget v0, p0, Lcom/google/firebase/iid/zzac;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_35

    iget-object v0, p0, Lcom/google/firebase/iid/zzac;->zzcg:Ljava/util/Queue;

    .line 89
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/firebase/iid/zzac;->zzch:Landroid/util/SparseArray;

    .line 90
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "MessengerIpcClient"

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "MessengerIpcClient"

    const-string v1, "Finished handling requests, unbinding"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const/4 v0, 0x3

    .line 93
    iput v0, p0, Lcom/google/firebase/iid/zzac;->state:I

    .line 94
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/zzac;->zzci:Lcom/google/firebase/iid/zzab;

    invoke-static {v1}, Lcom/google/firebase/iid/zzab;->zza(Lcom/google/firebase/iid/zzab;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    .line 95
    :cond_35
    monitor-exit p0

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.google.firebase.iid.zzae (com.google.firebase.iid.zzae)
.class final synthetic Lcom/google/firebase/iid/zzae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzcj:Lcom/google/firebase/iid/zzac;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzac;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzae;->zzcj:Lcom/google/firebase/iid/zzac;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/zzae;->zzcj:Lcom/google/firebase/iid/zzac;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzac;->zzaa()V

    return-void
.end method

###### Class com.google.firebase.iid.zzaf (com.google.firebase.iid.zzaf)
.class final synthetic Lcom/google/firebase/iid/zzaf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final zzcj:Lcom/google/firebase/iid/zzac;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzac;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzaf;->zzcj:Lcom/google/firebase/iid/zzac;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/iid/zzaf;->zzcj:Lcom/google/firebase/iid/zzac;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzac;->zza(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

###### Class com.google.firebase.iid.zzah (com.google.firebase.iid.zzah)
.class final synthetic Lcom/google/firebase/iid/zzah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzcj:Lcom/google/firebase/iid/zzac;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzac;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzah;->zzcj:Lcom/google/firebase/iid/zzac;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/firebase/iid/zzah;->zzcj:Lcom/google/firebase/iid/zzac;

    .line 2
    :goto_2
    monitor-enter v0

    .line 3
    :try_start_3
    iget v1, v0, Lcom/google/firebase/iid/zzac;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_a
    iget-object v1, v0, Lcom/google/firebase/iid/zzac;->zzcg:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 6
    invoke-virtual {v0}, Lcom/google/firebase/iid/zzac;->zzz()V

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_17
    iget-object v1, v0, Lcom/google/firebase/iid/zzac;->zzcg:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/iid/zzal;

    .line 9
    iget-object v3, v0, Lcom/google/firebase/iid/zzac;->zzch:Landroid/util/SparseArray;

    iget v4, v1, Lcom/google/firebase/iid/zzal;->zzcm:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    iget-object v3, v0, Lcom/google/firebase/iid/zzac;->zzci:Lcom/google/firebase/iid/zzab;

    .line 11
    invoke-static {v3}, Lcom/google/firebase/iid/zzab;->zzb(Lcom/google/firebase/iid/zzab;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    new-instance v4, Lcom/google/firebase/iid/zzag;

    invoke-direct {v4, v0, v1}, Lcom/google/firebase/iid/zzag;-><init>(Lcom/google/firebase/iid/zzac;Lcom/google/firebase/iid/zzal;)V

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6, v7}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 12
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_ae

    const-string v3, "MessengerIpcClient"

    const/4 v4, 0x3

    .line 14
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_66

    const-string v3, "MessengerIpcClient"

    .line 15
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Sending "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_66
    iget-object v3, v0, Lcom/google/firebase/iid/zzac;->zzci:Lcom/google/firebase/iid/zzab;

    invoke-static {v3}, Lcom/google/firebase/iid/zzab;->zza(Lcom/google/firebase/iid/zzab;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/google/firebase/iid/zzac;->zzce:Landroid/os/Messenger;

    .line 17
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 18
    iget v6, v1, Lcom/google/firebase/iid/zzal;->what:I

    iput v6, v5, Landroid/os/Message;->what:I

    .line 19
    iget v6, v1, Lcom/google/firebase/iid/zzal;->zzcm:I

    iput v6, v5, Landroid/os/Message;->arg1:I

    .line 20
    iput-object v4, v5, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 21
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v6, "oneWay"

    .line 22
    invoke-virtual {v1}, Lcom/google/firebase/iid/zzal;->zzab()Z

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "pkg"

    .line 23
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "data"

    .line 24
    iget-object v1, v1, Lcom/google/firebase/iid/zzal;->zzco:Landroid/os/Bundle;

    invoke-virtual {v4, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {v5, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 28
    :try_start_9d
    iget-object v1, v0, Lcom/google/firebase/iid/zzac;->zzcf:Lcom/google/firebase/iid/zzaj;

    invoke-virtual {v1, v5}, Lcom/google/firebase/iid/zzaj;->send(Landroid/os/Message;)V
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_a2} :catch_a4

    goto/16 :goto_2

    :catch_a4
    move-exception v1

    .line 31
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/iid/zzac;->zza(ILjava/lang/String;)V

    goto/16 :goto_2

    :catchall_ae
    move-exception v1

    .line 12
    :try_start_af
    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    throw v1
.end method

###### Class com.google.firebase.iid.zzag (com.google.firebase.iid.zzag)
.class final synthetic Lcom/google/firebase/iid/zzag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzcj:Lcom/google/firebase/iid/zzac;

.field private final zzck:Lcom/google/firebase/iid/zzal;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzac;Lcom/google/firebase/iid/zzal;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzag;->zzcj:Lcom/google/firebase/iid/zzac;

    iput-object p2, p0, Lcom/google/firebase/iid/zzag;->zzck:Lcom/google/firebase/iid/zzal;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/iid/zzag;->zzcj:Lcom/google/firebase/iid/zzac;

    iget-object v1, p0, Lcom/google/firebase/iid/zzag;->zzck:Lcom/google/firebase/iid/zzal;

    .line 2
    iget v1, v1, Lcom/google/firebase/iid/zzal;->zzcm:I

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzac;->zza(I)V

    return-void
.end method
