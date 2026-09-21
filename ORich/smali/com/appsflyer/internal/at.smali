###### Class com.appsflyer.internal.at (com.appsflyer.internal.at)
.class public abstract Lcom/appsflyer/internal/at;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final AFInAppEventParameterName:[Ljava/lang/String;

.field public final AFInAppEventType:Ljava/lang/String;

.field public final AFKeystoreWrapper:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final valueOf:Landroid/content/Context;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/appsflyer/internal/at$3;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/at$3;-><init>(Lcom/appsflyer/internal/at;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/appsflyer/internal/at;->AFKeystoreWrapper:Ljava/util/concurrent/FutureTask;

    .line 32
    iput-object p1, p0, Lcom/appsflyer/internal/at;->valueOf:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/appsflyer/internal/at;->AFInAppEventType:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/appsflyer/internal/at;->AFInAppEventParameterName:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public AFInAppEventParameterName()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/at;->AFKeystoreWrapper:Ljava/util/concurrent/FutureTask;

    const-wide/16 v1, 0x1f4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_a} :catch_d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    goto :goto_10

    :catch_d
    move-exception v0

    goto :goto_10

    :catch_f
    move-exception v0

    .line 1067
    :goto_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final AFInAppEventType()Z
    .registers 5

    const/4 v0, 0x0

    .line 53
    :try_start_1
    iget-object v1, p0, Lcom/appsflyer/internal/at;->valueOf:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/appsflyer/internal/at;->AFInAppEventType:Ljava/lang/String;

    const/16 v3, 0x80

    .line 54
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 55
    iget-object v2, p0, Lcom/appsflyer/internal/at;->AFInAppEventParameterName:[Ljava/lang/String;

    .line 56
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/appsflyer/internal/at;->valueOf:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/appsflyer/internal/aa;->values(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_27} :catch_2f
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_27} :catch_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_27} :catch_2b

    if-eqz v1, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    return v0

    :catch_2b
    move-exception v1

    goto :goto_30

    :catch_2d
    move-exception v1

    goto :goto_30

    :catch_2f
    move-exception v1

    .line 2067
    :goto_30
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method protected abstract valueOf()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

###### Class com.appsflyer.internal.at.AnonymousClass3 (com.appsflyer.internal.at$3)
.class final Lcom/appsflyer/internal/at$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private synthetic AFInAppEventType:Lcom/appsflyer/internal/at;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/at;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/appsflyer/internal/at$3;->AFInAppEventType:Lcom/appsflyer/internal/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/appsflyer/internal/at$3;->AFInAppEventType:Lcom/appsflyer/internal/at;

    invoke-virtual {v0}, Lcom/appsflyer/internal/at;->AFInAppEventType()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/appsflyer/internal/at$3;->AFInAppEventType:Lcom/appsflyer/internal/at;

    invoke-virtual {v0}, Lcom/appsflyer/internal/at;->valueOf()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method
