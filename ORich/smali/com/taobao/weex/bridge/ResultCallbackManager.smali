###### Class com.taobao.weex.bridge.ResultCallbackManager (com.taobao.weex.bridge.ResultCallbackManager)
.class Lcom/taobao/weex/bridge/ResultCallbackManager;
.super Ljava/lang/Object;
.source "ResultCallbackManager.java"


# static fields
.field private static mResultCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/taobao/weex/bridge/ResultCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static sCallbackId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/taobao/weex/bridge/ResultCallbackManager;->mResultCallbacks:Landroid/util/SparseArray;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static generateCallbackId(Lcom/taobao/weex/bridge/ResultCallback;)J
    .registers 6

    .line 34
    sget-wide v0, Lcom/taobao/weex/bridge/ResultCallbackManager;->sCallbackId:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-ltz v4, :cond_d

    const-wide/16 v0, 0x0

    .line 35
    sput-wide v0, Lcom/taobao/weex/bridge/ResultCallbackManager;->sCallbackId:J

    .line 37
    :cond_d
    sget-wide v0, Lcom/taobao/weex/bridge/ResultCallbackManager;->sCallbackId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/taobao/weex/bridge/ResultCallbackManager;->sCallbackId:J

    long-to-int v1, v0

    .line 38
    sget-object v0, Lcom/taobao/weex/bridge/ResultCallbackManager;->mResultCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    int-to-long v0, v1

    return-wide v0
.end method

.method static removeCallbackById(J)Lcom/taobao/weex/bridge/ResultCallback;
    .registers 3

    .line 44
    sget-object v0, Lcom/taobao/weex/bridge/ResultCallbackManager;->mResultCallbacks:Landroid/util/SparseArray;

    long-to-int p1, p0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/bridge/ResultCallback;

    .line 45
    sget-object v0, Lcom/taobao/weex/bridge/ResultCallbackManager;->mResultCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-object p0
.end method
