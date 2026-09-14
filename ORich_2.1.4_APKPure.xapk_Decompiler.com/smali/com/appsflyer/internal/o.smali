###### Class com.appsflyer.internal.o (com.appsflyer.internal.o)
.class public final Lcom/appsflyer/internal/o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/o$d;
    }
.end annotation


# instance fields
.field public final valueOf:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .registers 10

    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_63

    .line 1014
    array-length v1, p1

    if-nez v1, :cond_a

    goto :goto_63

    :cond_a
    const-string v1, "[\\w]{1,45}"

    .line 1018
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1019
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1020
    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v3, :cond_40

    aget-object v6, p1, v5

    if-eqz v6, :cond_30

    .line 1021
    invoke-virtual {v1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_30

    .line 1022
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 1023
    :cond_30
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Invalid partner name: "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    :goto_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_40
    const-string p1, "all"

    .line 1025
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 1026
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/o;->valueOf:[Ljava/lang/String;

    return-void

    .line 1029
    :cond_4f
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_60

    new-array p1, v4, [Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/appsflyer/internal/o;->valueOf:[Ljava/lang/String;

    return-void

    .line 1030
    :cond_60
    iput-object v0, p0, Lcom/appsflyer/internal/o;->valueOf:[Ljava/lang/String;

    return-void

    .line 1015
    :cond_63
    :goto_63
    iput-object v0, p0, Lcom/appsflyer/internal/o;->valueOf:[Ljava/lang/String;

    return-void
.end method

###### Class com.appsflyer.internal.o.AnonymousClass2 (com.appsflyer.internal.o$2)
.class final Lcom/appsflyer/internal/o$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventType:Ljava/lang/Class;

.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/o$d;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/appsflyer/internal/o$d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/appsflyer/internal/o$2;->AFInAppEventType:Ljava/lang/Class;

    iput-object p2, p0, Lcom/appsflyer/internal/o$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/o$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onDeferredAppLinkDataFetched"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_6c

    const/4 p1, 0x0

    .line 45
    aget-object v0, p3, p1

    if-eqz v0, :cond_64

    .line 54
    iget-object v0, p0, Lcom/appsflyer/internal/o$2;->AFInAppEventType:Ljava/lang/Class;

    aget-object p3, p3, p1

    invoke-virtual {v0, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 55
    iget-object v0, p0, Lcom/appsflyer/internal/o$2;->AFInAppEventType:Ljava/lang/Class;

    new-array v1, p1, [Ljava/lang/Class;

    const-string v2, "getArgumentBundle"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 56
    const-class v1, Landroid/os/Bundle;

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0, p3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_59

    const-string p3, "com.facebook.platform.APPLINK_NATIVE_URL"

    .line 59
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "target_url"

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "extras"

    .line 62
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_57

    const-string v1, "deeplink_context"

    .line 64
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_57

    const-string v1, "promo_code"

    .line 66
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5c

    :cond_57
    move-object p1, p2

    goto :goto_5c

    :cond_59
    move-object p1, p2

    move-object p3, p1

    move-object v0, p3

    .line 70
    :goto_5c
    iget-object v1, p0, Lcom/appsflyer/internal/o$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/o$d;

    if-eqz v1, :cond_6b

    .line 71
    invoke-interface {v1, p3, v0, p1}, Lcom/appsflyer/internal/o$d;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    .line 75
    :cond_64
    iget-object p1, p0, Lcom/appsflyer/internal/o$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/o$d;

    if-eqz p1, :cond_6b

    .line 76
    invoke-interface {p1, p2, p2, p2}, Lcom/appsflyer/internal/o$d;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    :goto_6b
    return-object p2

    .line 81
    :cond_6c
    iget-object p1, p0, Lcom/appsflyer/internal/o$2;->AFKeystoreWrapper:Lcom/appsflyer/internal/o$d;

    if-eqz p1, :cond_75

    const-string p3, "onDeferredAppLinkDataFetched invocation failed"

    .line 82
    invoke-interface {p1, p3}, Lcom/appsflyer/internal/o$d;->AFInAppEventParameterName(Ljava/lang/String;)V

    :cond_75
    return-object p2
.end method

###### Class com.appsflyer.internal.o.d (com.appsflyer.internal.o$d)
.class public interface abstract Lcom/appsflyer/internal/o$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# virtual methods
.method public abstract AFInAppEventParameterName(Ljava/lang/String;)V
.end method

.method public abstract AFInAppEventType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
