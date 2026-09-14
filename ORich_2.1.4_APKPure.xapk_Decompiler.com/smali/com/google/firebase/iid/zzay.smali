###### Class com.google.firebase.iid.zzay (com.google.firebase.iid.zzay)
.class final Lcom/google/firebase/iid/zzay;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private zzdp:Lcom/google/firebase/iid/zzaz;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/iid/zzaz;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/iid/zzay;->zzdp:Lcom/google/firebase/iid/zzaz;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 9
    iget-object p1, p0, Lcom/google/firebase/iid/zzay;->zzdp:Lcom/google/firebase/iid/zzaz;

    if-nez p1, :cond_5

    return-void

    .line 11
    :cond_5
    invoke-virtual {p1}, Lcom/google/firebase/iid/zzaz;->zzao()Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    .line 13
    :cond_c
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzm()Z

    move-result p1

    if-eqz p1, :cond_19

    const-string p1, "FirebaseInstanceId"

    const-string p2, "Connectivity changed. Starting background sync."

    .line 14
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_19
    iget-object p1, p0, Lcom/google/firebase/iid/zzay;->zzdp:Lcom/google/firebase/iid/zzaz;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Ljava/lang/Runnable;J)V

    .line 16
    iget-object p1, p0, Lcom/google/firebase/iid/zzay;->zzdp:Lcom/google/firebase/iid/zzaz;

    invoke-virtual {p1}, Lcom/google/firebase/iid/zzaz;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/google/firebase/iid/zzay;->zzdp:Lcom/google/firebase/iid/zzaz;

    return-void
.end method

.method public final zzam()V
    .registers 3

    .line 4
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzm()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "FirebaseInstanceId"

    const-string v1, "Connectivity change received registered"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_d
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/google/firebase/iid/zzay;->zzdp:Lcom/google/firebase/iid/zzaz;

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzaz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
