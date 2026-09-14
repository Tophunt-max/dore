###### Class com.appsflyer.internal.u (com.appsflyer.internal.u)
.class public final Lcom/appsflyer/internal/u;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/u$e;
    }
.end annotation


# instance fields
.field public final AFInAppEventParameterName:Lcom/appsflyer/internal/bj;

.field public final values:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/bj;Ljava/util/concurrent/ExecutorService;)V
    .registers 3

    .line 1015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1016
    iput-object p1, p0, Lcom/appsflyer/internal/u;->AFInAppEventParameterName:Lcom/appsflyer/internal/bj;

    .line 1017
    iput-object p2, p0, Lcom/appsflyer/internal/u;->values:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

###### Class com.appsflyer.internal.u.AnonymousClass3 (com.appsflyer.internal.u$3)
.class final Lcom/appsflyer/internal/u$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/u$e;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/u$e;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/appsflyer/internal/u$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/u$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 28
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onLvlResult"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_4f

    .line 29
    aget-object p1, p3, v1

    if-eqz p1, :cond_17

    .line 30
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/String;

    goto :goto_18

    :cond_17
    move-object p1, v0

    :goto_18
    const/4 p2, 0x1

    .line 33
    aget-object v1, p3, p2

    if-eqz v1, :cond_22

    .line 34
    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/String;

    goto :goto_23

    :cond_22
    move-object p2, v0

    .line 37
    :goto_23
    iget-object p3, p0, Lcom/appsflyer/internal/u$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/u$e;

    if-eqz p3, :cond_49

    if-eqz p1, :cond_2f

    if-eqz p2, :cond_2f

    .line 39
    invoke-interface {p3, p1, p2}, Lcom/appsflyer/internal/u$e;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8e

    :cond_2f
    const-string p1, "onLvlResult with error"

    if-nez p2, :cond_3e

    .line 41
    new-instance p2, Ljava/lang/Exception;

    const-string v1, "AFLVL Invalid signature"

    invoke-direct {p2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1, p2}, Lcom/appsflyer/internal/u$e;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_8e

    .line 43
    :cond_3e
    new-instance p2, Ljava/lang/Exception;

    const-string v1, "AFLVL Invalid signedData"

    invoke-direct {p2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1, p2}, Lcom/appsflyer/internal/u$e;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_8e

    :cond_49
    const-string p1, "onLvlResult invocation succeeded, but listener is null"

    .line 46
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    goto :goto_8e

    .line 48
    :cond_4f
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onLvlFailure"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 49
    iget-object p1, p0, Lcom/appsflyer/internal/u$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/u$e;

    if-eqz p1, :cond_78

    .line 50
    aget-object v2, p3, v1

    if-eqz v2, :cond_6d

    .line 51
    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Exception;

    const-string p3, "onLvlFailure with exception"

    .line 52
    invoke-interface {p1, p3, p2}, Lcom/appsflyer/internal/u$e;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_8e

    .line 54
    :cond_6d
    new-instance p3, Ljava/lang/Exception;

    const-string v1, "unknown"

    invoke-direct {p3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2, p3}, Lcom/appsflyer/internal/u$e;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_8e

    :cond_78
    const-string p1, "onLvlFailure: listener is null"

    .line 57
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    goto :goto_8e

    .line 61
    :cond_7e
    iget-object p1, p0, Lcom/appsflyer/internal/u$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/u$e;

    if-eqz p1, :cond_8e

    .line 62
    new-instance p2, Ljava/lang/Exception;

    const-string p3, "com.appsflyer.lvl.AppsFlyerLVL$resultListener invocation failed"

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string p3, "lvlInvocation failed"

    invoke-interface {p1, p3, p2}, Lcom/appsflyer/internal/u$e;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_8e
    :goto_8e
    return-object v0
.end method

###### Class com.appsflyer.internal.u.e (com.appsflyer.internal.u$e)
.class interface abstract Lcom/appsflyer/internal/u$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "e"
.end annotation


# virtual methods
.method public abstract AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V
.end method
