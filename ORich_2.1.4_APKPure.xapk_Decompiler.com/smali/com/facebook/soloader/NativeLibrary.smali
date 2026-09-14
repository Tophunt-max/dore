###### Class com.facebook.soloader.NativeLibrary (com.facebook.soloader.NativeLibrary)
.class public abstract Lcom/facebook/soloader/NativeLibrary;
.super Ljava/lang/Object;
.source "NativeLibrary.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.facebook.soloader.NativeLibrary"


# instance fields
.field private mLibrariesLoaded:Z

.field private mLibraryNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile mLinkError:Ljava/lang/UnsatisfiedLinkError;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mLoadLibraries:Ljava/lang/Boolean;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/soloader/NativeLibrary;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/soloader/NativeLibrary;->mLoadLibraries:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/facebook/soloader/NativeLibrary;->mLibrariesLoaded:Z

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/facebook/soloader/NativeLibrary;->mLinkError:Ljava/lang/UnsatisfiedLinkError;

    .line 46
    iput-object p1, p0, Lcom/facebook/soloader/NativeLibrary;->mLibraryNames:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public ensureLoaded()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/facebook/soloader/NativeLibrary;->loadLibraries()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 91
    :cond_7
    iget-object v0, p0, Lcom/facebook/soloader/NativeLibrary;->mLinkError:Ljava/lang/UnsatisfiedLinkError;

    throw v0
.end method

.method public getError()Ljava/lang/UnsatisfiedLinkError;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/facebook/soloader/NativeLibrary;->mLinkError:Ljava/lang/UnsatisfiedLinkError;

    return-object v0
.end method

.method protected initialNativeCheck()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    return-void
.end method

.method public loadLibraries()Z
    .registers 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/facebook/soloader/NativeLibrary;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_3
    iget-object v1, p0, Lcom/facebook/soloader/NativeLibrary;->mLoadLibraries:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_f

    .line 58
    iget-boolean v1, p0, Lcom/facebook/soloader/NativeLibrary;->mLibrariesLoaded:Z

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_61

    return v1

    :cond_f
    const/4 v1, 0x0

    .line 61
    :try_start_10
    iget-object v2, p0, Lcom/facebook/soloader/NativeLibrary;->mLibraryNames:Ljava/util/List;

    if-eqz v2, :cond_28

    .line 62
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 63
    invoke-static {v3}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    goto :goto_18

    .line 66
    :cond_28
    invoke-virtual {p0}, Lcom/facebook/soloader/NativeLibrary;->initialNativeCheck()V

    const/4 v2, 0x1

    .line 67
    iput-boolean v2, p0, Lcom/facebook/soloader/NativeLibrary;->mLibrariesLoaded:Z

    const/4 v2, 0x0

    .line 68
    iput-object v2, p0, Lcom/facebook/soloader/NativeLibrary;->mLibraryNames:Ljava/util/List;
    :try_end_31
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_10 .. :try_end_31} :catch_4b
    .catchall {:try_start_10 .. :try_end_31} :catchall_32

    goto :goto_57

    :catchall_32
    move-exception v2

    .line 74
    :try_start_33
    sget-object v3, Lcom/facebook/soloader/NativeLibrary;->TAG:Ljava/lang/String;

    const-string v4, "Failed to load native lib (other error): "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    new-instance v3, Ljava/lang/UnsatisfiedLinkError;

    const-string v4, "Failed loading libraries"

    invoke-direct {v3, v4}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/facebook/soloader/NativeLibrary;->mLinkError:Ljava/lang/UnsatisfiedLinkError;

    .line 76
    iget-object v3, p0, Lcom/facebook/soloader/NativeLibrary;->mLinkError:Ljava/lang/UnsatisfiedLinkError;

    invoke-virtual {v3, v2}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 77
    iput-boolean v1, p0, Lcom/facebook/soloader/NativeLibrary;->mLibrariesLoaded:Z

    goto :goto_57

    :catch_4b
    move-exception v2

    .line 70
    sget-object v3, Lcom/facebook/soloader/NativeLibrary;->TAG:Ljava/lang/String;

    const-string v4, "Failed to load native lib (initial check): "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    iput-object v2, p0, Lcom/facebook/soloader/NativeLibrary;->mLinkError:Ljava/lang/UnsatisfiedLinkError;

    .line 72
    iput-boolean v1, p0, Lcom/facebook/soloader/NativeLibrary;->mLibrariesLoaded:Z

    .line 79
    :goto_57
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/soloader/NativeLibrary;->mLoadLibraries:Ljava/lang/Boolean;

    .line 80
    iget-boolean v1, p0, Lcom/facebook/soloader/NativeLibrary;->mLibrariesLoaded:Z

    monitor-exit v0

    return v1

    :catchall_61
    move-exception v1

    .line 81
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_33 .. :try_end_63} :catchall_61

    throw v1
.end method
