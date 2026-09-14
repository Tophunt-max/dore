###### Class com.appsflyer.internal.au (com.appsflyer.internal.au)
.class public final Lcom/appsflyer/internal/au;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final AFInAppEventType:Landroid/app/Application;

.field public final valueOf:Landroid/content/SharedPreferences;

.field public final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/au;->values:Ljava/util/Map;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/appsflyer/internal/au;->AFInAppEventType:Landroid/app/Application;

    .line 30
    invoke-static {p1}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/au;->valueOf:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final AFKeystoreWrapper()Z
    .registers 4

    .line 87
    invoke-static {}, Lcom/appsflyer/internal/ag;->AFInAppEventType()Lcom/appsflyer/internal/ag;

    iget-object v0, p0, Lcom/appsflyer/internal/au;->valueOf:Landroid/content/SharedPreferences;

    const-string v1, "appsFlyerCount"

    const/4 v2, 0x0

    .line 3774
    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/ag;->valueOf(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    return v2
.end method
