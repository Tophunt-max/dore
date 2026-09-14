###### Class com.appsflyer.internal.bm (com.appsflyer.internal.bm)
.class public final Lcom/appsflyer/internal/bm;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseBody:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final AFInAppEventParameterName:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final AFInAppEventType:Lcom/appsflyer/internal/br;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appsflyer/internal/br<",
            "TResponseBody;>;"
        }
    .end annotation
.end field

.field final AFKeystoreWrapper:Lcom/appsflyer/internal/bj;

.field final valueOf:Lcom/appsflyer/internal/v;

.field public final values:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/v;Ljava/util/concurrent/ExecutorService;Lcom/appsflyer/internal/bj;Lcom/appsflyer/internal/br;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/v;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/appsflyer/internal/bj;",
            "Lcom/appsflyer/internal/br<",
            "TResponseBody;>;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/appsflyer/internal/bm;->AFInAppEventParameterName:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    iput-object p1, p0, Lcom/appsflyer/internal/bm;->valueOf:Lcom/appsflyer/internal/v;

    .line 21
    iput-object p2, p0, Lcom/appsflyer/internal/bm;->values:Ljava/util/concurrent/ExecutorService;

    .line 22
    iput-object p3, p0, Lcom/appsflyer/internal/bm;->AFKeystoreWrapper:Lcom/appsflyer/internal/bj;

    .line 23
    iput-object p4, p0, Lcom/appsflyer/internal/bm;->AFInAppEventType:Lcom/appsflyer/internal/br;

    return-void
.end method

###### Class com.appsflyer.internal.bm.AnonymousClass3 (com.appsflyer.internal.bm$3)
.class public final Lcom/appsflyer/internal/bm$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/bl;

.field private synthetic valueOf:Lcom/appsflyer/internal/bm;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/bm;Lcom/appsflyer/internal/bl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/appsflyer/internal/bm$3;->valueOf:Lcom/appsflyer/internal/bm;

    iput-object p2, p0, Lcom/appsflyer/internal/bm$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/bm$3;->valueOf:Lcom/appsflyer/internal/bm;

    .line 1009
    iget-object v0, v0, Lcom/appsflyer/internal/bm;->AFKeystoreWrapper:Lcom/appsflyer/internal/bj;

    .line 56
    iget-object v1, p0, Lcom/appsflyer/internal/bm$3;->valueOf:Lcom/appsflyer/internal/bm;

    .line 2009
    iget-object v1, v1, Lcom/appsflyer/internal/bm;->valueOf:Lcom/appsflyer/internal/v;

    .line 56
    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/bj;->valueOf(Lcom/appsflyer/internal/v;)Lcom/appsflyer/internal/bi;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/appsflyer/internal/bm$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/bl;

    if-eqz v1, :cond_2a

    .line 58
    new-instance v2, Lcom/appsflyer/internal/bi;

    iget-object v3, p0, Lcom/appsflyer/internal/bm$3;->valueOf:Lcom/appsflyer/internal/bm;

    .line 3009
    iget-object v3, v3, Lcom/appsflyer/internal/bm;->AFInAppEventType:Lcom/appsflyer/internal/br;

    .line 3021
    iget-object v4, v0, Lcom/appsflyer/internal/bi;->values:Ljava/lang/Object;

    .line 59
    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/appsflyer/internal/br;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 3025
    iget v4, v0, Lcom/appsflyer/internal/bi;->AFKeystoreWrapper:I

    .line 61
    invoke-virtual {v0}, Lcom/appsflyer/internal/bi;->AFInAppEventType()Z

    move-result v0

    invoke-direct {v2, v3, v4, v0}, Lcom/appsflyer/internal/bi;-><init>(Ljava/lang/Object;IZ)V

    .line 58
    invoke-interface {v1, v2}, Lcom/appsflyer/internal/bl;->AFInAppEventParameterName(Lcom/appsflyer/internal/bi;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2a} :catch_2b

    :cond_2a
    return-void

    :catch_2b
    move-exception v0

    .line 64
    iget-object v1, p0, Lcom/appsflyer/internal/bm$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/bl;

    if-eqz v1, :cond_33

    .line 65
    invoke-interface {v1, v0}, Lcom/appsflyer/internal/bl;->AFInAppEventParameterName(Ljava/lang/Throwable;)V

    :cond_33
    return-void
.end method
