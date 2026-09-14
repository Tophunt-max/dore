###### Class com.google.firebase.iid.zze (com.google.firebase.iid.zze)
.class final Lcom/google/firebase/iid/zze;
.super Ljava/lang/Object;


# instance fields
.field final intent:Landroid/content/Intent;

.field private zzaa:Z

.field private final zzab:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzz:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/firebase/iid/zze;->zzaa:Z

    .line 3
    iput-object p1, p0, Lcom/google/firebase/iid/zze;->intent:Landroid/content/Intent;

    .line 4
    iput-object p2, p0, Lcom/google/firebase/iid/zze;->zzz:Landroid/content/BroadcastReceiver$PendingResult;

    .line 5
    new-instance p2, Lcom/google/firebase/iid/zzd;

    invoke-direct {p2, p0, p1}, Lcom/google/firebase/iid/zzd;-><init>(Lcom/google/firebase/iid/zze;Landroid/content/Intent;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x2328

    .line 6
    invoke-interface {p3, p2, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/zze;->zzab:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method final declared-synchronized finish()V
    .registers 3

    monitor-enter p0

    .line 8
    :try_start_1
    iget-boolean v0, p0, Lcom/google/firebase/iid/zze;->zzaa:Z

    if-nez v0, :cond_13

    .line 9
    iget-object v0, p0, Lcom/google/firebase/iid/zze;->zzz:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 10
    iget-object v0, p0, Lcom/google/firebase/iid/zze;->zzab:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/google/firebase/iid/zze;->zzaa:Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 12
    :cond_13
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.google.firebase.iid.zzd (com.google.firebase.iid.zzd)
.class final synthetic Lcom/google/firebase/iid/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzx:Lcom/google/firebase/iid/zze;

.field private final zzy:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zze;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzd;->zzx:Lcom/google/firebase/iid/zze;

    iput-object p2, p0, Lcom/google/firebase/iid/zzd;->zzy:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/iid/zzd;->zzx:Lcom/google/firebase/iid/zze;

    iget-object v1, p0, Lcom/google/firebase/iid/zzd;->zzy:Landroid/content/Intent;

    .line 3
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Service took too long to process intent: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " App may get closed."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EnhancedIntentService"

    .line 4
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/iid/zze;->finish()V

    return-void
.end method
