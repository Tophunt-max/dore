###### Class com.google.firebase.components.OptionalProvider (com.google.firebase.components.OptionalProvider)
.class Lcom/google/firebase/components/OptionalProvider;
.super Ljava/lang/Object;
.source "OptionalProvider.java"

# interfaces
.implements Lcom/google/firebase/inject/Provider;
.implements Lcom/google/firebase/inject/Deferred;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inject/Provider<",
        "TT;>;",
        "Lcom/google/firebase/inject/Deferred<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_PROVIDER:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOOP_HANDLER:Lcom/google/firebase/inject/Deferred$DeferredHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Deferred$DeferredHandler<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile delegate:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private handler:Lcom/google/firebase/inject/Deferred$DeferredHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Deferred$DeferredHandler<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    sget-object v0, Lcom/google/firebase/components/-$$Lambda$OptionalProvider$fPOTfPXm7DpPlmwdyImHVqtycpI;->INSTANCE:Lcom/google/firebase/components/-$$Lambda$OptionalProvider$fPOTfPXm7DpPlmwdyImHVqtycpI;

    sput-object v0, Lcom/google/firebase/components/OptionalProvider;->NOOP_HANDLER:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    .line 32
    sget-object v0, Lcom/google/firebase/components/-$$Lambda$OptionalProvider$ILPY1nlr_ULZNpsKMbNjkBMT0Ec;->INSTANCE:Lcom/google/firebase/components/-$$Lambda$OptionalProvider$ILPY1nlr_ULZNpsKMbNjkBMT0Ec;

    sput-object v0, Lcom/google/firebase/components/OptionalProvider;->EMPTY_PROVIDER:Lcom/google/firebase/inject/Provider;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/inject/Deferred$DeferredHandler;Lcom/google/firebase/inject/Provider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Deferred$DeferredHandler<",
            "TT;>;",
            "Lcom/google/firebase/inject/Provider<",
            "TT;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/firebase/components/OptionalProvider;->handler:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    .line 41
    iput-object p2, p0, Lcom/google/firebase/components/OptionalProvider;->delegate:Lcom/google/firebase/inject/Provider;

    return-void
.end method

.method static empty()Lcom/google/firebase/components/OptionalProvider;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/firebase/components/OptionalProvider<",
            "TT;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/google/firebase/components/OptionalProvider;

    sget-object v1, Lcom/google/firebase/components/OptionalProvider;->NOOP_HANDLER:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    sget-object v2, Lcom/google/firebase/components/OptionalProvider;->EMPTY_PROVIDER:Lcom/google/firebase/inject/Provider;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/components/OptionalProvider;-><init>(Lcom/google/firebase/inject/Deferred$DeferredHandler;Lcom/google/firebase/inject/Provider;)V

    return-object v0
.end method

.method static synthetic lambda$static$0(Lcom/google/firebase/inject/Provider;)V
    .registers 1

    return-void
.end method

.method static synthetic lambda$static$1()Ljava/lang/Object;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$whenAvailable$2(Lcom/google/firebase/inject/Deferred$DeferredHandler;Lcom/google/firebase/inject/Deferred$DeferredHandler;Lcom/google/firebase/inject/Provider;)V
    .registers 3

    .line 89
    invoke-interface {p0, p2}, Lcom/google/firebase/inject/Deferred$DeferredHandler;->handle(Lcom/google/firebase/inject/Provider;)V

    .line 90
    invoke-interface {p1, p2}, Lcom/google/firebase/inject/Deferred$DeferredHandler;->handle(Lcom/google/firebase/inject/Provider;)V

    return-void
.end method

.method static of(Lcom/google/firebase/inject/Provider;)Lcom/google/firebase/components/OptionalProvider;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/inject/Provider<",
            "TT;>;)",
            "Lcom/google/firebase/components/OptionalProvider<",
            "TT;>;"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/google/firebase/components/OptionalProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/components/OptionalProvider;-><init>(Lcom/google/firebase/inject/Deferred$DeferredHandler;Lcom/google/firebase/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/google/firebase/components/OptionalProvider;->delegate:Lcom/google/firebase/inject/Provider;

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method set(Lcom/google/firebase/inject/Provider;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Provider<",
            "TT;>;)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/google/firebase/components/OptionalProvider;->delegate:Lcom/google/firebase/inject/Provider;

    sget-object v1, Lcom/google/firebase/components/OptionalProvider;->EMPTY_PROVIDER:Lcom/google/firebase/inject/Provider;

    if-ne v0, v1, :cond_16

    .line 64
    monitor-enter p0

    .line 65
    :try_start_7
    iget-object v0, p0, Lcom/google/firebase/components/OptionalProvider;->handler:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    const/4 v1, 0x0

    .line 66
    iput-object v1, p0, Lcom/google/firebase/components/OptionalProvider;->handler:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    .line 67
    iput-object p1, p0, Lcom/google/firebase/components/OptionalProvider;->delegate:Lcom/google/firebase/inject/Provider;

    .line 68
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_13

    .line 69
    invoke-interface {v0, p1}, Lcom/google/firebase/inject/Deferred$DeferredHandler;->handle(Lcom/google/firebase/inject/Provider;)V

    return-void

    :catchall_13
    move-exception p1

    .line 68
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1

    .line 61
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "provide() can be called only once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whenAvailable(Lcom/google/firebase/inject/Deferred$DeferredHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Deferred$DeferredHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/google/firebase/components/OptionalProvider;->delegate:Lcom/google/firebase/inject/Provider;

    .line 76
    sget-object v1, Lcom/google/firebase/components/OptionalProvider;->EMPTY_PROVIDER:Lcom/google/firebase/inject/Provider;

    if-eq v0, v1, :cond_a

    .line 77
    invoke-interface {p1, v0}, Lcom/google/firebase/inject/Deferred$DeferredHandler;->handle(Lcom/google/firebase/inject/Provider;)V

    return-void

    :cond_a
    const/4 v0, 0x0

    .line 81
    monitor-enter p0

    .line 82
    :try_start_c
    iget-object v2, p0, Lcom/google/firebase/components/OptionalProvider;->delegate:Lcom/google/firebase/inject/Provider;

    if-eq v2, v1, :cond_12

    move-object v0, v2

    goto :goto_1b

    .line 86
    :cond_12
    iget-object v1, p0, Lcom/google/firebase/components/OptionalProvider;->handler:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    .line 87
    new-instance v3, Lcom/google/firebase/components/-$$Lambda$OptionalProvider$zFC_X48ke2E5YYoYo8vfNgc3N8Y;

    invoke-direct {v3, v1, p1}, Lcom/google/firebase/components/-$$Lambda$OptionalProvider$zFC_X48ke2E5YYoYo8vfNgc3N8Y;-><init>(Lcom/google/firebase/inject/Deferred$DeferredHandler;Lcom/google/firebase/inject/Deferred$DeferredHandler;)V

    iput-object v3, p0, Lcom/google/firebase/components/OptionalProvider;->handler:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    .line 93
    :goto_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_22

    if-eqz v0, :cond_21

    .line 95
    invoke-interface {p1, v2}, Lcom/google/firebase/inject/Deferred$DeferredHandler;->handle(Lcom/google/firebase/inject/Provider;)V

    :cond_21
    return-void

    :catchall_22
    move-exception p1

    .line 93
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method

###### Class com.google.firebase.components.$$Lambda$OptionalProvider$ILPY1nlr_ULZNpsKMbNjkBMT0Ec (com.google.firebase.components.-$$Lambda$OptionalProvider$ILPY1nlr_ULZNpsKMbNjkBMT0Ec)
.class public final synthetic Lcom/google/firebase/components/-$$Lambda$OptionalProvider$ILPY1nlr_ULZNpsKMbNjkBMT0Ec;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/components/-$$Lambda$OptionalProvider$ILPY1nlr_ULZNpsKMbNjkBMT0Ec;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/components/-$$Lambda$OptionalProvider$ILPY1nlr_ULZNpsKMbNjkBMT0Ec;

    invoke-direct {v0}, Lcom/google/firebase/components/-$$Lambda$OptionalProvider$ILPY1nlr_ULZNpsKMbNjkBMT0Ec;-><init>()V

    sput-object v0, Lcom/google/firebase/components/-$$Lambda$OptionalProvider$ILPY1nlr_ULZNpsKMbNjkBMT0Ec;->INSTANCE:Lcom/google/firebase/components/-$$Lambda$OptionalProvider$ILPY1nlr_ULZNpsKMbNjkBMT0Ec;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/firebase/components/OptionalProvider;->lambda$static$1()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.firebase.components.$$Lambda$OptionalProvider$fPOTfPXm7DpPlmwdyImHVqtycpI (com.google.firebase.components.-$$Lambda$OptionalProvider$fPOTfPXm7DpPlmwdyImHVqtycpI)
.class public final synthetic Lcom/google/firebase/components/-$$Lambda$OptionalProvider$fPOTfPXm7DpPlmwdyImHVqtycpI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/inject/Deferred$DeferredHandler;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/components/-$$Lambda$OptionalProvider$fPOTfPXm7DpPlmwdyImHVqtycpI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/components/-$$Lambda$OptionalProvider$fPOTfPXm7DpPlmwdyImHVqtycpI;

    invoke-direct {v0}, Lcom/google/firebase/components/-$$Lambda$OptionalProvider$fPOTfPXm7DpPlmwdyImHVqtycpI;-><init>()V

    sput-object v0, Lcom/google/firebase/components/-$$Lambda$OptionalProvider$fPOTfPXm7DpPlmwdyImHVqtycpI;->INSTANCE:Lcom/google/firebase/components/-$$Lambda$OptionalProvider$fPOTfPXm7DpPlmwdyImHVqtycpI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handle(Lcom/google/firebase/inject/Provider;)V
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/components/OptionalProvider;->lambda$static$0(Lcom/google/firebase/inject/Provider;)V

    return-void
.end method

###### Class com.google.firebase.components.$$Lambda$OptionalProvider$zFC_X48ke2E5YYoYo8vfNgc3N8Y (com.google.firebase.components.-$$Lambda$OptionalProvider$zFC_X48ke2E5YYoYo8vfNgc3N8Y)
.class public final synthetic Lcom/google/firebase/components/-$$Lambda$OptionalProvider$zFC_X48ke2E5YYoYo8vfNgc3N8Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/inject/Deferred$DeferredHandler;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inject/Deferred$DeferredHandler;

.field public final synthetic f$1:Lcom/google/firebase/inject/Deferred$DeferredHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inject/Deferred$DeferredHandler;Lcom/google/firebase/inject/Deferred$DeferredHandler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/-$$Lambda$OptionalProvider$zFC_X48ke2E5YYoYo8vfNgc3N8Y;->f$0:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    iput-object p2, p0, Lcom/google/firebase/components/-$$Lambda$OptionalProvider$zFC_X48ke2E5YYoYo8vfNgc3N8Y;->f$1:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    return-void
.end method


# virtual methods
.method public final handle(Lcom/google/firebase/inject/Provider;)V
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/components/-$$Lambda$OptionalProvider$zFC_X48ke2E5YYoYo8vfNgc3N8Y;->f$0:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    iget-object v1, p0, Lcom/google/firebase/components/-$$Lambda$OptionalProvider$zFC_X48ke2E5YYoYo8vfNgc3N8Y;->f$1:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/components/OptionalProvider;->lambda$whenAvailable$2(Lcom/google/firebase/inject/Deferred$DeferredHandler;Lcom/google/firebase/inject/Deferred$DeferredHandler;Lcom/google/firebase/inject/Provider;)V

    return-void
.end method
