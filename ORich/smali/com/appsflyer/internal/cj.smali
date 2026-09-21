###### Class com.appsflyer.internal.cj (com.appsflyer.internal.cj)
.class public abstract Lcom/appsflyer/internal/cj;
.super Ljava/util/Observable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/cj$e;
    }
.end annotation


# instance fields
.field final AFInAppEventParameterName:Ljava/lang/Runnable;

.field private AFInAppEventType:J

.field public final AFKeystoreWrapper:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public valueOf:Lcom/appsflyer/internal/cj$e;

.field public final values:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/cj;->AFKeystoreWrapper:Ljava/util/Map;

    .line 17
    sget-object v0, Lcom/appsflyer/internal/cj$e;->AFKeystoreWrapper:Lcom/appsflyer/internal/cj$e;

    iput-object v0, p0, Lcom/appsflyer/internal/cj;->valueOf:Lcom/appsflyer/internal/cj$e;

    .line 21
    iput-object p2, p0, Lcom/appsflyer/internal/cj;->AFInAppEventParameterName:Ljava/lang/Runnable;

    .line 22
    iput-object p1, p0, Lcom/appsflyer/internal/cj;->values:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName()V
    .registers 3

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/cj;->AFInAppEventType:J

    .line 29
    sget-object v0, Lcom/appsflyer/internal/cj$e;->values:Lcom/appsflyer/internal/cj$e;

    iput-object v0, p0, Lcom/appsflyer/internal/cj;->valueOf:Lcom/appsflyer/internal/cj$e;

    .line 30
    new-instance v0, Lcom/appsflyer/internal/cj$2;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/cj$2;-><init>(Lcom/appsflyer/internal/cj;)V

    invoke-virtual {p0, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public abstract AFKeystoreWrapper(Landroid/content/Context;)V
.end method

.method public final valueOf()V
    .registers 6

    .line 39
    iget-object v0, p0, Lcom/appsflyer/internal/cj;->AFKeystoreWrapper:Ljava/util/Map;

    iget-object v1, p0, Lcom/appsflyer/internal/cj;->values:Ljava/lang/String;

    const-string v2, "source"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/appsflyer/internal/cj;->AFKeystoreWrapper:Ljava/util/Map;

    new-instance v1, Lcom/appsflyer/internal/ci;

    invoke-direct {v1}, Lcom/appsflyer/internal/ci;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 41
    iget-object v0, p0, Lcom/appsflyer/internal/cj;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/appsflyer/internal/cj;->AFInAppEventType:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "latency"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/appsflyer/internal/cj$e;->AFInAppEventType:Lcom/appsflyer/internal/cj$e;

    iput-object v0, p0, Lcom/appsflyer/internal/cj;->valueOf:Lcom/appsflyer/internal/cj$e;

    .line 43
    invoke-virtual {p0}, Lcom/appsflyer/internal/cj;->setChanged()V

    .line 44
    invoke-virtual {p0}, Ljava/util/Observable;->notifyObservers()V

    return-void
.end method

###### Class com.appsflyer.internal.cj.AnonymousClass2 (com.appsflyer.internal.cj$2)
.class final Lcom/appsflyer/internal/cj$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/cj;->AFInAppEventParameterName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic values:Lcom/appsflyer/internal/cj;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/cj;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/appsflyer/internal/cj$2;->values:Lcom/appsflyer/internal/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 3

    .line 33
    iget-object p1, p0, Lcom/appsflyer/internal/cj$2;->values:Lcom/appsflyer/internal/cj;

    .line 1013
    iget-object p1, p1, Lcom/appsflyer/internal/cj;->AFInAppEventParameterName:Ljava/lang/Runnable;

    .line 33
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class com.appsflyer.internal.cj.e (com.appsflyer.internal.cj$e)
.class public final enum Lcom/appsflyer/internal/cj$e;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/cj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/cj$e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic AFInAppEventParameterName:[Lcom/appsflyer/internal/cj$e;

.field public static final enum AFInAppEventType:Lcom/appsflyer/internal/cj$e;

.field public static final enum AFKeystoreWrapper:Lcom/appsflyer/internal/cj$e;

.field public static final enum values:Lcom/appsflyer/internal/cj$e;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 56
    new-instance v0, Lcom/appsflyer/internal/cj$e;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/cj$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/cj$e;->AFKeystoreWrapper:Lcom/appsflyer/internal/cj$e;

    new-instance v1, Lcom/appsflyer/internal/cj$e;

    const-string v3, "STARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/appsflyer/internal/cj$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/appsflyer/internal/cj$e;->values:Lcom/appsflyer/internal/cj$e;

    new-instance v3, Lcom/appsflyer/internal/cj$e;

    const-string v5, "FINISHED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/appsflyer/internal/cj$e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/appsflyer/internal/cj$e;->AFInAppEventType:Lcom/appsflyer/internal/cj$e;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/appsflyer/internal/cj$e;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 55
    sput-object v5, Lcom/appsflyer/internal/cj$e;->AFInAppEventParameterName:[Lcom/appsflyer/internal/cj$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/cj$e;
    .registers 2

    .line 55
    const-class v0, Lcom/appsflyer/internal/cj$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/cj$e;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/cj$e;
    .registers 1

    .line 55
    sget-object v0, Lcom/appsflyer/internal/cj$e;->AFInAppEventParameterName:[Lcom/appsflyer/internal/cj$e;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/cj$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/cj$e;

    return-object v0
.end method
