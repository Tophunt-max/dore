###### Class io.dcloud.d (io.dcloud.d)
.class Lio/dcloud/d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field a:Lio/dcloud/feature/internal/reflect/BroadcastReceiver;

.field b:Landroid/content/IntentFilter;


# direct methods
.method constructor <init>(Lio/dcloud/feature/internal/reflect/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/d;->a:Lio/dcloud/feature/internal/reflect/BroadcastReceiver;

    .line 3
    iput-object v0, p0, Lio/dcloud/d;->b:Landroid/content/IntentFilter;

    .line 5
    iput-object p1, p0, Lio/dcloud/d;->a:Lio/dcloud/feature/internal/reflect/BroadcastReceiver;

    .line 6
    iput-object p2, p0, Lio/dcloud/d;->b:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/d;->a:Lio/dcloud/feature/internal/reflect/BroadcastReceiver;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lio/dcloud/d;->b:Landroid/content/IntentFilter;

    if-eqz v0, :cond_17

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2
    iget-object v0, p0, Lio/dcloud/d;->a:Lio/dcloud/feature/internal/reflect/BroadcastReceiver;

    invoke-interface {v0, p1, p2}, Lio/dcloud/feature/internal/reflect/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_17
    return-void
.end method
