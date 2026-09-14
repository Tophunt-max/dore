###### Class com.facebook.soloader.nativeloader.NativeLoader (com.facebook.soloader.nativeloader.NativeLoader)
.class public Lcom/facebook/soloader/nativeloader/NativeLoader;
.super Ljava/lang/Object;
.source "NativeLoader.java"


# static fields
.field private static sDelegate:Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLibraryPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    const-class v0, Lcom/facebook/soloader/nativeloader/NativeLoader;

    monitor-enter v0

    .line 62
    :try_start_3
    sget-object v1, Lcom/facebook/soloader/nativeloader/NativeLoader;->sDelegate:Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;

    if-eqz v1, :cond_d

    .line 68
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    .line 70
    invoke-interface {v1, p0}, Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;->getLibraryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 63
    :cond_d
    :try_start_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "NativeLoader has not been initialized.  To use standard native library loading, call NativeLoader.init(new SystemDelegate())."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_15
    move-exception p0

    .line 68
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw p0
.end method

.method public static getSoSourcesVersion()I
    .registers 3

    .line 79
    const-class v0, Lcom/facebook/soloader/nativeloader/NativeLoader;

    monitor-enter v0

    .line 80
    :try_start_3
    sget-object v1, Lcom/facebook/soloader/nativeloader/NativeLoader;->sDelegate:Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;

    if-eqz v1, :cond_d

    .line 86
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    .line 88
    invoke-interface {v1}, Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;->getSoSourcesVersion()I

    move-result v0

    return v0

    .line 81
    :cond_d
    :try_start_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "NativeLoader has not been initialized.  To use standard native library loading, call NativeLoader.init(new SystemDelegate())."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_15
    move-exception v1

    .line 86
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw v1
.end method

.method public static declared-synchronized init(Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;)V
    .registers 3

    const-class v0, Lcom/facebook/soloader/nativeloader/NativeLoader;

    monitor-enter v0

    .line 98
    :try_start_3
    sget-object v1, Lcom/facebook/soloader/nativeloader/NativeLoader;->sDelegate:Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;

    if-nez v1, :cond_b

    .line 101
    sput-object p0, Lcom/facebook/soloader/nativeloader/NativeLoader;->sDelegate:Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    .line 102
    monitor-exit v0

    return-void

    .line 99
    :cond_b
    :try_start_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot re-initialize NativeLoader."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_13

    :catchall_13
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized initIfUninitialized(Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;)V
    .registers 3

    const-class v0, Lcom/facebook/soloader/nativeloader/NativeLoader;

    monitor-enter v0

    .line 122
    :try_start_3
    invoke-static {}, Lcom/facebook/soloader/nativeloader/NativeLoader;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_c

    .line 123
    invoke-static {p0}, Lcom/facebook/soloader/nativeloader/NativeLoader;->init(Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 125
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isInitialized()Z
    .registers 2

    const-class v0, Lcom/facebook/soloader/nativeloader/NativeLoader;

    monitor-enter v0

    .line 113
    :try_start_3
    sget-object v1, Lcom/facebook/soloader/nativeloader/NativeLoader;->sDelegate:Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_c

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static loadLibrary(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    .line 30
    invoke-static {p0, v0}, Lcom/facebook/soloader/nativeloader/NativeLoader;->loadLibrary(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static loadLibrary(Ljava/lang/String;I)Z
    .registers 4

    .line 43
    const-class v0, Lcom/facebook/soloader/nativeloader/NativeLoader;

    monitor-enter v0

    .line 44
    :try_start_3
    sget-object v1, Lcom/facebook/soloader/nativeloader/NativeLoader;->sDelegate:Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;

    if-eqz v1, :cond_d

    .line 50
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    .line 51
    invoke-interface {v1, p0, p1}, Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;->loadLibrary(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 45
    :cond_d
    :try_start_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "NativeLoader has not been initialized.  To use standard native library loading, call NativeLoader.init(new SystemDelegate())."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_15
    move-exception p0

    .line 50
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw p0
.end method
