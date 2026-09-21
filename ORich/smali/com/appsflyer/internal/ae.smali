###### Class com.appsflyer.internal.ae (com.appsflyer.internal.ae)
.class public final Lcom/appsflyer/internal/ae;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/ae$c;
    }
.end annotation


# static fields
.field public static AFInAppEventType:Lcom/appsflyer/internal/ae$c; = null

.field public static AFKeystoreWrapper:J = 0x1f4L


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static valueOf(Landroid/content/Context;Lcom/appsflyer/internal/ae$c;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 23
    sput-object p1, Lcom/appsflyer/internal/ae;->AFInAppEventType:Lcom/appsflyer/internal/ae$c;

    .line 24
    new-instance v0, Lcom/appsflyer/internal/ae$4;

    invoke-direct {v0, p2, p1}, Lcom/appsflyer/internal/ae$4;-><init>(Ljava/util/concurrent/Executor;Lcom/appsflyer/internal/ae$c;)V

    .line 99
    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_11

    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 100
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    .line 101
    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

###### Class com.appsflyer.internal.ae.AnonymousClass4 (com.appsflyer.internal.ae$4)
.class final Lcom/appsflyer/internal/ae$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/ae;->valueOf(Landroid/content/Context;Lcom/appsflyer/internal/ae$c;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic AFInAppEventType:Lcom/appsflyer/internal/ae$c;

.field AFKeystoreWrapper:Z

.field valueOf:Z

.field private synthetic values:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/appsflyer/internal/ae$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/appsflyer/internal/ae$4;->values:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/appsflyer/internal/ae$4;->AFInAppEventType:Lcom/appsflyer/internal/ae$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/appsflyer/internal/ae$4;->AFKeystoreWrapper:Z

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 75
    iget-object p2, p0, Lcom/appsflyer/internal/ae$4;->values:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/appsflyer/internal/ae$4$5;

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/ae$4$5;-><init>(Landroid/app/Activity;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 4

    .line 47
    iget-object v0, p0, Lcom/appsflyer/internal/ae$4;->values:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/internal/ae$4$4;

    invoke-direct {v1, p0, p1}, Lcom/appsflyer/internal/ae$4$4;-><init>(Lcom/appsflyer/internal/ae$4;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    .line 30
    iget-object v0, p0, Lcom/appsflyer/internal/ae$4;->values:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/internal/ae$4$1;

    invoke-direct {v1, p0, p1}, Lcom/appsflyer/internal/ae$4$1;-><init>(Lcom/appsflyer/internal/ae$4;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

###### Class com.appsflyer.internal.ae.AnonymousClass4.AnonymousClass1 (com.appsflyer.internal.ae$4$1)
.class final Lcom/appsflyer/internal/ae$4$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/ae$4;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventParameterName:Landroid/app/Activity;

.field private synthetic valueOf:Lcom/appsflyer/internal/ae$4;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/ae$4;Landroid/app/Activity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/appsflyer/internal/ae$4$1;->valueOf:Lcom/appsflyer/internal/ae$4;

    iput-object p2, p0, Lcom/appsflyer/internal/ae$4$1;->AFInAppEventParameterName:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/appsflyer/internal/ae$4$1;->valueOf:Lcom/appsflyer/internal/ae$4;

    iget-boolean v0, v0, Lcom/appsflyer/internal/ae$4;->valueOf:Z

    if-nez v0, :cond_16

    .line 35
    :try_start_6
    iget-object v0, p0, Lcom/appsflyer/internal/ae$4$1;->valueOf:Lcom/appsflyer/internal/ae$4;

    iget-object v0, v0, Lcom/appsflyer/internal/ae$4;->AFInAppEventType:Lcom/appsflyer/internal/ae$c;

    iget-object v1, p0, Lcom/appsflyer/internal/ae$4$1;->AFInAppEventParameterName:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/ae$c;->AFInAppEventParameterName(Landroid/app/Activity;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_10

    goto :goto_16

    :catch_10
    move-exception v0

    const-string v1, "Listener thrown an exception: "

    .line 37
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/appsflyer/internal/ae$4$1;->valueOf:Lcom/appsflyer/internal/ae$4;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appsflyer/internal/ae$4;->AFKeystoreWrapper:Z

    .line 40
    iget-object v0, p0, Lcom/appsflyer/internal/ae$4$1;->valueOf:Lcom/appsflyer/internal/ae$4;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appsflyer/internal/ae$4;->valueOf:Z

    return-void
.end method

###### Class com.appsflyer.internal.ae.AnonymousClass4.RunnableC00054 (com.appsflyer.internal.ae$4$4)
.class final Lcom/appsflyer/internal/ae$4$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/ae$4;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/ae$4;

.field private synthetic values:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/ae$4;Landroid/app/Activity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/appsflyer/internal/ae$4$4;->AFKeystoreWrapper:Lcom/appsflyer/internal/ae$4;

    iput-object p2, p0, Lcom/appsflyer/internal/ae$4$4;->values:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 50
    iget-object v0, p0, Lcom/appsflyer/internal/ae$4$4;->AFKeystoreWrapper:Lcom/appsflyer/internal/ae$4;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appsflyer/internal/ae$4;->AFKeystoreWrapper:Z

    .line 51
    iget-object v0, p0, Lcom/appsflyer/internal/ae$4$4;->values:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    :try_start_b
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/appsflyer/internal/ae$4$4$2;

    invoke-direct {v2, p0, v0}, Lcom/appsflyer/internal/ae$4$4$2;-><init>(Lcom/appsflyer/internal/ae$4$4;Landroid/content/Context;)V

    sget-wide v3, Lcom/appsflyer/internal/ae;->AFKeystoreWrapper:J

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    const-string v1, "Background task failed with a throwable: "

    .line 67
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class com.appsflyer.internal.ae.AnonymousClass4.RunnableC00054.AnonymousClass2 (com.appsflyer.internal.ae$4$4$2)
.class final Lcom/appsflyer/internal/ae$4$4$2;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/ae$4$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventParameterName:Landroid/content/Context;

.field private synthetic valueOf:Lcom/appsflyer/internal/ae$4$4;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/ae$4$4;Landroid/content/Context;)V
    .registers 3

    .line 53
    iput-object p1, p0, Lcom/appsflyer/internal/ae$4$4$2;->valueOf:Lcom/appsflyer/internal/ae$4$4;

    iput-object p2, p0, Lcom/appsflyer/internal/ae$4$4$2;->AFInAppEventParameterName:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/appsflyer/internal/ae$4$4$2;->valueOf:Lcom/appsflyer/internal/ae$4$4;

    iget-object v0, v0, Lcom/appsflyer/internal/ae$4$4;->AFKeystoreWrapper:Lcom/appsflyer/internal/ae$4;

    iget-boolean v0, v0, Lcom/appsflyer/internal/ae$4;->valueOf:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/appsflyer/internal/ae$4$4$2;->valueOf:Lcom/appsflyer/internal/ae$4$4;

    iget-object v0, v0, Lcom/appsflyer/internal/ae$4$4;->AFKeystoreWrapper:Lcom/appsflyer/internal/ae$4;

    iget-boolean v0, v0, Lcom/appsflyer/internal/ae$4;->AFKeystoreWrapper:Z

    if-eqz v0, :cond_29

    .line 57
    iget-object v0, p0, Lcom/appsflyer/internal/ae$4$4$2;->valueOf:Lcom/appsflyer/internal/ae$4$4;

    iget-object v0, v0, Lcom/appsflyer/internal/ae$4$4;->AFKeystoreWrapper:Lcom/appsflyer/internal/ae$4;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appsflyer/internal/ae$4;->valueOf:Z

    .line 59
    :try_start_17
    iget-object v0, p0, Lcom/appsflyer/internal/ae$4$4$2;->valueOf:Lcom/appsflyer/internal/ae$4$4;

    iget-object v0, v0, Lcom/appsflyer/internal/ae$4$4;->AFKeystoreWrapper:Lcom/appsflyer/internal/ae$4;

    iget-object v0, v0, Lcom/appsflyer/internal/ae$4;->AFInAppEventType:Lcom/appsflyer/internal/ae$c;

    iget-object v1, p0, Lcom/appsflyer/internal/ae$4$4$2;->AFInAppEventParameterName:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/ae$c;->valueOf(Landroid/content/Context;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception v0

    const-string v1, "Listener threw exception! "

    .line 61
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_29
    return-void
.end method

###### Class com.appsflyer.internal.ae.AnonymousClass4.AnonymousClass5 (com.appsflyer.internal.ae$4$5)
.class final Lcom/appsflyer/internal/ae$4$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/ae$4;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic values:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/appsflyer/internal/ae$4$5;->values:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 78
    invoke-static {}, Lcom/appsflyer/internal/j;->AFInAppEventType()Lcom/appsflyer/internal/j;

    iget-object v0, p0, Lcom/appsflyer/internal/ae$4$5;->values:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1270
    invoke-static {v0}, Lcom/appsflyer/internal/j;->AFKeystoreWrapper(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_15

    sget-object v1, Lcom/appsflyer/internal/j;->AFInAppEventType:Landroid/content/Intent;

    if-eq v0, v1, :cond_15

    .line 1271
    sput-object v0, Lcom/appsflyer/internal/j;->AFInAppEventType:Landroid/content/Intent;

    :cond_15
    return-void
.end method

###### Class com.appsflyer.internal.ae.c (com.appsflyer.internal.ae$c)
.class public interface abstract Lcom/appsflyer/internal/ae$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract AFInAppEventParameterName(Landroid/app/Activity;)V
.end method

.method public abstract valueOf(Landroid/content/Context;)V
.end method
