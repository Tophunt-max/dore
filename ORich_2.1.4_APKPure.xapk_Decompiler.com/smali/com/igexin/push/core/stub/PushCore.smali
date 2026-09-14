###### Class com.igexin.push.core.stub.PushCore (com.igexin.push.core.stub.PushCore)
.class public Lcom/igexin/push/core/stub/PushCore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/sdk/IPushCore;


# instance fields
.field private a:Lcom/igexin/push/core/e;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Lcom/igexin/push/core/g/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/core/stub/PushCore;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onActivityConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .registers 4

    iget-object v0, p0, Lcom/igexin/push/core/stub/PushCore;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/igexin/push/core/g/a;

    if-eqz p1, :cond_d

    invoke-virtual {p1, p2}, Lcom/igexin/push/core/g/a;->a(Landroid/content/res/Configuration;)V

    :cond_d
    return-void
.end method

.method public onActivityCreateOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)Z
    .registers 4

    iget-object v0, p0, Lcom/igexin/push/core/stub/PushCore;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/igexin/push/core/g/a;

    if-eqz p1, :cond_12

    invoke-virtual {p1, p2}, Lcom/igexin/push/core/g/a;->a(Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public onActivityDestroy(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/igexin/push/core/stub/PushCore;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/g/a;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/igexin/push/core/g/a;->h()V

    iget-object v1, p0, Lcom/igexin/push/core/stub/PushCore;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/igexin/push/core/g/b;->a()Lcom/igexin/push/core/g/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/igexin/push/core/g/b;->c(Lcom/igexin/push/core/g/a;)V

    :cond_19
    return-void
.end method

.method public onActivityKeyDown(Landroid/app/Activity;ILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/igexin/push/core/stub/PushCore;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/igexin/push/core/g/a;

    if-eqz p1, :cond_12

    invoke-virtual {p1, p2, p3}, Lcom/igexin/push/core/g/a;->a(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public onActivityNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/igexin/push/core/stub/PushCore;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/igexin/push/core/g/a;

    if-eqz p1, :cond_d

    invoke-virtual {p1, p2}, Lcom/igexin/push/core/g/a;->a(Landroid/content/Intent;)V

    :cond_d
    return-void
.end method

.method public onActivityPause(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/igexin/push/core/stub/PushCore;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/igexin/push/core/g/a;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/igexin/push/core/g/a;->f()V

    :cond_d
    return-void
.end method

.method public onActivityRestart(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/igexin/push/core/stub/PushCore;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/igexin/push/core/g/a;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/igexin/push/core/g/a;->d()V

    :cond_d
    return-void
.end method

.method public onActivityResume(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/igexin/push/core/stub/PushCore;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/igexin/push/core/g/a;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/igexin/push/core/g/a;->e()V

    :cond_d
    return-void
.end method

.method public onActivityStart(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 6

    if-eqz p1, :cond_2f

    if-eqz p2, :cond_2f

    const-string v0, "activityid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {}, Lcom/igexin/push/core/g/b;->a()Lcom/igexin/push/core/g/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/igexin/push/core/g/b;->a(Ljava/lang/Long;)Lcom/igexin/push/core/g/a;

    move-result-object p2

    if-eqz p2, :cond_2c

    invoke-virtual {p2, p1}, Lcom/igexin/push/core/g/a;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/igexin/push/core/stub/PushCore;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/igexin/push/core/g/a;->c()V

    goto :goto_2f

    :cond_2c
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public onActivityStop(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/igexin/push/core/stub/PushCore;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/igexin/push/core/g/a;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/igexin/push/core/g/a;->g()V

    :cond_d
    return-void
.end method

.method public onServiceBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onServiceDestroy()V
    .registers 1

    return-void
.end method

.method public onServiceStartCommand(Landroid/content/Intent;II)I
    .registers 4

    iget-object p2, p0, Lcom/igexin/push/core/stub/PushCore;->a:Lcom/igexin/push/core/e;

    if-eqz p2, :cond_13

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    sget p3, Lcom/igexin/push/core/b;->e:I

    iput p3, p2, Landroid/os/Message;->what:I

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/igexin/push/core/stub/PushCore;->a:Lcom/igexin/push/core/e;

    invoke-virtual {p1, p2}, Lcom/igexin/push/core/e;->a(Landroid/os/Message;)Z

    :cond_13
    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/core/s;->d()I

    move-result p1

    return p1
.end method

.method public start(Landroid/content/Context;)Z
    .registers 3

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/core/stub/PushCore;->a:Lcom/igexin/push/core/e;

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/e;->a(Landroid/content/Context;)Z

    const/4 p1, 0x1

    return p1
.end method
