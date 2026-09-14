###### Class com.facebook.drawee.components.DeferredReleaser (com.facebook.drawee.components.DeferredReleaser)
.class public abstract Lcom/facebook/drawee/components/DeferredReleaser;
.super Ljava/lang/Object;
.source "DeferredReleaser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/components/DeferredReleaser$Releasable;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/facebook/drawee/components/DeferredReleaser;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/facebook/drawee/components/DeferredReleaser;
    .registers 2

    const-class v0, Lcom/facebook/drawee/components/DeferredReleaser;

    monitor-enter v0

    .line 36
    :try_start_3
    sget-object v1, Lcom/facebook/drawee/components/DeferredReleaser;->sInstance:Lcom/facebook/drawee/components/DeferredReleaser;

    if-nez v1, :cond_e

    .line 37
    new-instance v1, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;

    invoke-direct {v1}, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;-><init>()V

    sput-object v1, Lcom/facebook/drawee/components/DeferredReleaser;->sInstance:Lcom/facebook/drawee/components/DeferredReleaser;

    .line 39
    :cond_e
    sget-object v1, Lcom/facebook/drawee/components/DeferredReleaser;->sInstance:Lcom/facebook/drawee/components/DeferredReleaser;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static isOnUiThread()Z
    .registers 2

    .line 60
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method


# virtual methods
.method public abstract cancelDeferredRelease(Lcom/facebook/drawee/components/DeferredReleaser$Releasable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "releasable"
        }
    .end annotation
.end method

.method public abstract scheduleDeferredRelease(Lcom/facebook/drawee/components/DeferredReleaser$Releasable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "releasable"
        }
    .end annotation
.end method

###### Class com.facebook.drawee.components.DeferredReleaser.Releasable (com.facebook.drawee.components.DeferredReleaser$Releasable)
.class public interface abstract Lcom/facebook/drawee/components/DeferredReleaser$Releasable;
.super Ljava/lang/Object;
.source "DeferredReleaser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/components/DeferredReleaser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Releasable"
.end annotation


# virtual methods
.method public abstract release()V
.end method
