###### Class com.appsflyer.internal.cc (com.appsflyer.internal.cc)
.class public abstract Lcom/appsflyer/internal/cc;
.super Lcom/appsflyer/internal/cj;
.source ""


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/cj;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method final AFKeystoreWrapper(Landroid/content/Context;Lcom/appsflyer/internal/at;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appsflyer/internal/at<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    invoke-static {}, Lcom/appsflyer/internal/ag;->AFInAppEventType()Lcom/appsflyer/internal/ag;

    .line 17
    invoke-static {p1}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "appsFlyerCount"

    const/4 v1, 0x0

    .line 3774
    invoke-static {p1, v0, v1}, Lcom/appsflyer/internal/ag;->valueOf(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result p1

    if-gtz p1, :cond_24

    .line 18
    invoke-virtual {p2}, Lcom/appsflyer/internal/at;->AFInAppEventType()Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_24

    .line 4038
    :cond_17
    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p2, Lcom/appsflyer/internal/at;->AFKeystoreWrapper:Ljava/util/concurrent/FutureTask;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 20
    invoke-virtual {p0}, Lcom/appsflyer/internal/cj;->AFInAppEventParameterName()V

    :cond_24
    :goto_24
    return-void
.end method
