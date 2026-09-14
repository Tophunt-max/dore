###### Class com.facebook.common.disk.NoOpDiskTrimmableRegistry (com.facebook.common.disk.NoOpDiskTrimmableRegistry)
.class public Lcom/facebook/common/disk/NoOpDiskTrimmableRegistry;
.super Ljava/lang/Object;
.source "NoOpDiskTrimmableRegistry.java"

# interfaces
.implements Lcom/facebook/common/disk/DiskTrimmableRegistry;


# static fields
.field private static sInstance:Lcom/facebook/common/disk/NoOpDiskTrimmableRegistry;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/facebook/common/disk/NoOpDiskTrimmableRegistry;
    .registers 2

    const-class v0, Lcom/facebook/common/disk/NoOpDiskTrimmableRegistry;

    monitor-enter v0

    .line 21
    :try_start_3
    sget-object v1, Lcom/facebook/common/disk/NoOpDiskTrimmableRegistry;->sInstance:Lcom/facebook/common/disk/NoOpDiskTrimmableRegistry;

    if-nez v1, :cond_e

    .line 22
    new-instance v1, Lcom/facebook/common/disk/NoOpDiskTrimmableRegistry;

    invoke-direct {v1}, Lcom/facebook/common/disk/NoOpDiskTrimmableRegistry;-><init>()V

    sput-object v1, Lcom/facebook/common/disk/NoOpDiskTrimmableRegistry;->sInstance:Lcom/facebook/common/disk/NoOpDiskTrimmableRegistry;

    .line 24
    :cond_e
    sget-object v1, Lcom/facebook/common/disk/NoOpDiskTrimmableRegistry;->sInstance:Lcom/facebook/common/disk/NoOpDiskTrimmableRegistry;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public registerDiskTrimmable(Lcom/facebook/common/disk/DiskTrimmable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trimmable"
        }
    .end annotation

    return-void
.end method

.method public unregisterDiskTrimmable(Lcom/facebook/common/disk/DiskTrimmable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trimmable"
        }
    .end annotation

    return-void
.end method
