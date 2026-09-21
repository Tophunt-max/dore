###### Class com.facebook.imagepipeline.nativecode.NativeJpegTranscoderSoLoader (com.facebook.imagepipeline.nativecode.NativeJpegTranscoderSoLoader)
.class public Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderSoLoader;
.super Ljava/lang/Object;
.source "NativeJpegTranscoderSoLoader.java"


# static fields
.field private static sInitialized:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized ensure()V
    .registers 4

    const-class v0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderSoLoader;

    monitor-enter v0

    .line 22
    :try_start_3
    sget-boolean v1, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderSoLoader;->sInitialized:Z

    if-nez v1, :cond_1a

    .line 26
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1c

    const/16 v2, 0x10

    const/4 v3, 0x1

    if-gt v1, v2, :cond_13

    :try_start_e
    const-string v1, "fb_jpegturbo"

    .line 28
    invoke-static {v1, v3}, Lcom/facebook/soloader/nativeloader/NativeLoader;->loadLibrary(Ljava/lang/String;I)Z
    :try_end_13
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_e .. :try_end_13} :catch_13
    .catchall {:try_start_e .. :try_end_13} :catchall_1c

    :catch_13
    :cond_13
    :try_start_13
    const-string v1, "native-imagetranscoder"

    .line 33
    invoke-static {v1}, Lcom/facebook/soloader/nativeloader/NativeLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 34
    sput-boolean v3, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderSoLoader;->sInitialized:Z
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1c

    .line 36
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v0

    throw v1
.end method
