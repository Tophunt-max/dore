###### Class androidtranscoder.MediaTranscoder (androidtranscoder.MediaTranscoder)
.class public Landroidtranscoder/MediaTranscoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidtranscoder/MediaTranscoder$Listener;
    }
.end annotation


# static fields
.field private static final MAXIMUM_THREAD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaTranscoder"

.field private static volatile sMediaTranscoder:Landroidtranscoder/MediaTranscoder;


# instance fields
.field private mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>()V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Landroidtranscoder/MediaTranscoder$1;

    invoke-direct {v7, p0}, Landroidtranscoder/MediaTranscoder$1;-><init>(Landroidtranscoder/MediaTranscoder;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Landroidtranscoder/MediaTranscoder;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static getInstance()Landroidtranscoder/MediaTranscoder;
    .registers 2

    .line 1
    sget-object v0, Landroidtranscoder/MediaTranscoder;->sMediaTranscoder:Landroidtranscoder/MediaTranscoder;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Landroidtranscoder/MediaTranscoder;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Landroidtranscoder/MediaTranscoder;->sMediaTranscoder:Landroidtranscoder/MediaTranscoder;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Landroidtranscoder/MediaTranscoder;

    invoke-direct {v1}, Landroidtranscoder/MediaTranscoder;-><init>()V

    sput-object v1, Landroidtranscoder/MediaTranscoder;->sMediaTranscoder:Landroidtranscoder/MediaTranscoder;

    .line 6
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 8
    :cond_17
    :goto_17
    sget-object v0, Landroidtranscoder/MediaTranscoder;->sMediaTranscoder:Landroidtranscoder/MediaTranscoder;

    return-object v0
.end method


# virtual methods
.method public transcodeVideo(Ljava/io/FileDescriptor;Ljava/lang/String;Landroidtranscoder/MediaTranscoder$Listener;)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/lang/String;",
            "Landroidtranscoder/MediaTranscoder$Listener;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Landroidtranscoder/MediaTranscoder$2;

    invoke-direct {v0, p0}, Landroidtranscoder/MediaTranscoder$2;-><init>(Landroidtranscoder/MediaTranscoder;)V

    invoke-virtual {p0, p1, p2, v0, p3}, Landroidtranscoder/MediaTranscoder;->transcodeVideo(Ljava/io/FileDescriptor;Ljava/lang/String;Landroidtranscoder/format/MediaFormatStrategy;Landroidtranscoder/MediaTranscoder$Listener;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public transcodeVideo(Ljava/io/FileDescriptor;Ljava/lang/String;Landroidtranscoder/format/MediaFormatStrategy;Landroidtranscoder/MediaTranscoder$Listener;)Ljava/util/concurrent/Future;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/lang/String;",
            "Landroidtranscoder/format/MediaFormatStrategy;",
            "Landroidtranscoder/MediaTranscoder$Listener;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 22
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_a

    .line 23
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 24
    :cond_a
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 26
    iget-object v9, p0, Landroidtranscoder/MediaTranscoder;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v10, Landroidtranscoder/MediaTranscoder$4;

    move-object v1, v10

    move-object v2, p0

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Landroidtranscoder/MediaTranscoder$4;-><init>(Landroidtranscoder/MediaTranscoder;Landroid/os/Handler;Landroidtranscoder/MediaTranscoder$Listener;Ljava/io/FileDescriptor;Ljava/lang/String;Landroidtranscoder/format/MediaFormatStrategy;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 78
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object p1
.end method

.method public transcodeVideo(Ljava/lang/String;Ljava/lang/String;Landroidtranscoder/format/MediaFormatStrategy;Landroidtranscoder/MediaTranscoder$Listener;)Ljava/util/concurrent/Future;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidtranscoder/format/MediaFormatStrategy;",
            "Landroidtranscoder/MediaTranscoder$Listener;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_15

    .line 3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_13

    .line 15
    new-instance v1, Landroidtranscoder/MediaTranscoder$3;

    invoke-direct {v1, p0, p4, v0}, Landroidtranscoder/MediaTranscoder$3;-><init>(Landroidtranscoder/MediaTranscoder;Landroidtranscoder/MediaTranscoder$Listener;Ljava/io/FileInputStream;)V

    invoke-virtual {p0, p1, p2, p3, v1}, Landroidtranscoder/MediaTranscoder;->transcodeVideo(Ljava/io/FileDescriptor;Ljava/lang/String;Landroidtranscoder/format/MediaFormatStrategy;Landroidtranscoder/MediaTranscoder$Listener;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1

    :catch_13
    move-exception p1

    goto :goto_17

    :catch_15
    move-exception p1

    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_25

    .line 16
    :try_start_19
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_25

    :catch_1d
    move-exception p2

    const-string p3, "MediaTranscoder"

    const-string p4, "Can\'t close input stream: "

    .line 18
    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    :cond_25
    :goto_25
    throw p1
.end method

###### Class androidtranscoder.MediaTranscoder.AnonymousClass1 (androidtranscoder.MediaTranscoder$1)
.class Landroidtranscoder/MediaTranscoder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidtranscoder/MediaTranscoder;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidtranscoder/MediaTranscoder;


# direct methods
.method constructor <init>(Landroidtranscoder/MediaTranscoder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidtranscoder/MediaTranscoder$1;->this$0:Landroidtranscoder/MediaTranscoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MediaTranscoder-Worker"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

###### Class androidtranscoder.MediaTranscoder.AnonymousClass2 (androidtranscoder.MediaTranscoder$2)
.class Landroidtranscoder/MediaTranscoder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidtranscoder/format/MediaFormatStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidtranscoder/MediaTranscoder;->transcodeVideo(Ljava/io/FileDescriptor;Ljava/lang/String;Landroidtranscoder/MediaTranscoder$Listener;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidtranscoder/MediaTranscoder;


# direct methods
.method constructor <init>(Landroidtranscoder/MediaTranscoder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidtranscoder/MediaTranscoder$2;->this$0:Landroidtranscoder/MediaTranscoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAudioOutputFormat(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public createVideoOutputFormat(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .registers 2

    .line 1
    invoke-static {}, Landroidtranscoder/format/MediaFormatPresets;->getExportPreset960x540()Landroid/media/MediaFormat;

    move-result-object p1

    return-object p1
.end method

###### Class androidtranscoder.MediaTranscoder.AnonymousClass3 (androidtranscoder.MediaTranscoder$3)
.class Landroidtranscoder/MediaTranscoder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidtranscoder/MediaTranscoder$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidtranscoder/MediaTranscoder;->transcodeVideo(Ljava/lang/String;Ljava/lang/String;Landroidtranscoder/format/MediaFormatStrategy;Landroidtranscoder/MediaTranscoder$Listener;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidtranscoder/MediaTranscoder;

.field final synthetic val$finalFileInputStream:Ljava/io/FileInputStream;

.field final synthetic val$listener:Landroidtranscoder/MediaTranscoder$Listener;


# direct methods
.method constructor <init>(Landroidtranscoder/MediaTranscoder;Landroidtranscoder/MediaTranscoder$Listener;Ljava/io/FileInputStream;)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidtranscoder/MediaTranscoder$3;->this$0:Landroidtranscoder/MediaTranscoder;

    iput-object p2, p0, Landroidtranscoder/MediaTranscoder$3;->val$listener:Landroidtranscoder/MediaTranscoder$Listener;

    iput-object p3, p0, Landroidtranscoder/MediaTranscoder$3;->val$finalFileInputStream:Ljava/io/FileInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeStream()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidtranscoder/MediaTranscoder$3;->val$finalFileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "MediaTranscoder"

    const-string v2, "Can\'t close input stream: "

    .line 3
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method


# virtual methods
.method public onTranscodeCanceled()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidtranscoder/MediaTranscoder$3;->closeStream()V

    .line 2
    iget-object v0, p0, Landroidtranscoder/MediaTranscoder$3;->val$listener:Landroidtranscoder/MediaTranscoder$Listener;

    invoke-interface {v0}, Landroidtranscoder/MediaTranscoder$Listener;->onTranscodeCanceled()V

    return-void
.end method

.method public onTranscodeCompleted()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidtranscoder/MediaTranscoder$3;->closeStream()V

    .line 2
    iget-object v0, p0, Landroidtranscoder/MediaTranscoder$3;->val$listener:Landroidtranscoder/MediaTranscoder$Listener;

    invoke-interface {v0}, Landroidtranscoder/MediaTranscoder$Listener;->onTranscodeCompleted()V

    return-void
.end method

.method public onTranscodeFailed(Ljava/lang/Exception;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidtranscoder/MediaTranscoder$3;->closeStream()V

    .line 2
    iget-object v0, p0, Landroidtranscoder/MediaTranscoder$3;->val$listener:Landroidtranscoder/MediaTranscoder$Listener;

    invoke-interface {v0, p1}, Landroidtranscoder/MediaTranscoder$Listener;->onTranscodeFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method public onTranscodeProgress(D)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidtranscoder/MediaTranscoder$3;->val$listener:Landroidtranscoder/MediaTranscoder$Listener;

    invoke-interface {v0, p1, p2}, Landroidtranscoder/MediaTranscoder$Listener;->onTranscodeProgress(D)V

    return-void
.end method

###### Class androidtranscoder.MediaTranscoder.AnonymousClass4 (androidtranscoder.MediaTranscoder$4)
.class Landroidtranscoder/MediaTranscoder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidtranscoder/MediaTranscoder;->transcodeVideo(Ljava/io/FileDescriptor;Ljava/lang/String;Landroidtranscoder/format/MediaFormatStrategy;Landroidtranscoder/MediaTranscoder$Listener;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidtranscoder/MediaTranscoder;

.field final synthetic val$futureReference:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$inFileDescriptor:Ljava/io/FileDescriptor;

.field final synthetic val$listener:Landroidtranscoder/MediaTranscoder$Listener;

.field final synthetic val$outFormatStrategy:Landroidtranscoder/format/MediaFormatStrategy;

.field final synthetic val$outPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidtranscoder/MediaTranscoder;Landroid/os/Handler;Landroidtranscoder/MediaTranscoder$Listener;Ljava/io/FileDescriptor;Ljava/lang/String;Landroidtranscoder/format/MediaFormatStrategy;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 8

    .line 1
    iput-object p1, p0, Landroidtranscoder/MediaTranscoder$4;->this$0:Landroidtranscoder/MediaTranscoder;

    iput-object p2, p0, Landroidtranscoder/MediaTranscoder$4;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroidtranscoder/MediaTranscoder$4;->val$listener:Landroidtranscoder/MediaTranscoder$Listener;

    iput-object p4, p0, Landroidtranscoder/MediaTranscoder$4;->val$inFileDescriptor:Ljava/io/FileDescriptor;

    iput-object p5, p0, Landroidtranscoder/MediaTranscoder$4;->val$outPath:Ljava/lang/String;

    iput-object p6, p0, Landroidtranscoder/MediaTranscoder$4;->val$outFormatStrategy:Landroidtranscoder/format/MediaFormatStrategy;

    iput-object p7, p0, Landroidtranscoder/MediaTranscoder$4;->val$futureReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidtranscoder/MediaTranscoder$4;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "MediaTranscoder"

    const/4 v1, 0x0

    .line 2
    :try_start_3
    new-instance v2, Landroidtranscoder/engine/MediaTranscoderEngine;

    invoke-direct {v2}, Landroidtranscoder/engine/MediaTranscoderEngine;-><init>()V

    .line 3
    new-instance v3, Landroidtranscoder/MediaTranscoder$4$1;

    invoke-direct {v3, p0}, Landroidtranscoder/MediaTranscoder$4$1;-><init>(Landroidtranscoder/MediaTranscoder$4;)V

    invoke-virtual {v2, v3}, Landroidtranscoder/engine/MediaTranscoderEngine;->setProgressCallback(Landroidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;)V

    .line 14
    iget-object v3, p0, Landroidtranscoder/MediaTranscoder$4;->val$inFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v3}, Landroidtranscoder/engine/MediaTranscoderEngine;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 15
    iget-object v3, p0, Landroidtranscoder/MediaTranscoder$4;->val$outPath:Ljava/lang/String;

    iget-object v4, p0, Landroidtranscoder/MediaTranscoder$4;->val$outFormatStrategy:Landroidtranscoder/format/MediaFormatStrategy;

    invoke-virtual {v2, v3, v4}, Landroidtranscoder/engine/MediaTranscoderEngine;->transcodeVideo(Ljava/lang/String;Landroidtranscoder/format/MediaFormatStrategy;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1c} :catch_2c
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_1c} :catch_25
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_1c} :catch_1e

    move-object v2, v1

    goto :goto_56

    :catch_1e
    move-exception v2

    const-string v3, "Fatal error while transcoding, this might be invalid format or bug in engine or Android."

    .line 24
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56

    :catch_25
    move-exception v2

    const-string v3, "Cancel transcode video file."

    .line 25
    invoke-static {v0, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56

    :catch_2c
    move-exception v2

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transcode failed: input file (fd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidtranscoder/MediaTranscoder$4;->val$inFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") not found or could not open output file (\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidtranscoder/MediaTranscoder$4;->val$outPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\') ."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    :goto_56
    iget-object v0, p0, Landroidtranscoder/MediaTranscoder$4;->val$handler:Landroid/os/Handler;

    new-instance v3, Landroidtranscoder/MediaTranscoder$4$2;

    invoke-direct {v3, p0, v2}, Landroidtranscoder/MediaTranscoder$4$2;-><init>(Landroidtranscoder/MediaTranscoder$4;Ljava/lang/Exception;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-nez v2, :cond_63

    return-object v1

    .line 54
    :cond_63
    throw v2
.end method

###### Class androidtranscoder.MediaTranscoder.AnonymousClass4.AnonymousClass1 (androidtranscoder.MediaTranscoder$4$1)
.class Landroidtranscoder/MediaTranscoder$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidtranscoder/MediaTranscoder$4;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidtranscoder/MediaTranscoder$4;


# direct methods
.method constructor <init>(Landroidtranscoder/MediaTranscoder$4;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidtranscoder/MediaTranscoder$4$1;->this$1:Landroidtranscoder/MediaTranscoder$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(D)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidtranscoder/MediaTranscoder$4$1;->this$1:Landroidtranscoder/MediaTranscoder$4;

    iget-object v0, v0, Landroidtranscoder/MediaTranscoder$4;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroidtranscoder/MediaTranscoder$4$1$1;

    invoke-direct {v1, p0, p1, p2}, Landroidtranscoder/MediaTranscoder$4$1$1;-><init>(Landroidtranscoder/MediaTranscoder$4$1;D)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class androidtranscoder.MediaTranscoder.AnonymousClass4.AnonymousClass1.RunnableC00001 (androidtranscoder.MediaTranscoder$4$1$1)
.class Landroidtranscoder/MediaTranscoder$4$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidtranscoder/MediaTranscoder$4$1;->onProgress(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroidtranscoder/MediaTranscoder$4$1;

.field final synthetic val$progress:D


# direct methods
.method constructor <init>(Landroidtranscoder/MediaTranscoder$4$1;D)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidtranscoder/MediaTranscoder$4$1$1;->this$2:Landroidtranscoder/MediaTranscoder$4$1;

    iput-wide p2, p0, Landroidtranscoder/MediaTranscoder$4$1$1;->val$progress:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidtranscoder/MediaTranscoder$4$1$1;->this$2:Landroidtranscoder/MediaTranscoder$4$1;

    iget-object v0, v0, Landroidtranscoder/MediaTranscoder$4$1;->this$1:Landroidtranscoder/MediaTranscoder$4;

    iget-object v0, v0, Landroidtranscoder/MediaTranscoder$4;->val$listener:Landroidtranscoder/MediaTranscoder$Listener;

    iget-wide v1, p0, Landroidtranscoder/MediaTranscoder$4$1$1;->val$progress:D

    invoke-interface {v0, v1, v2}, Landroidtranscoder/MediaTranscoder$Listener;->onTranscodeProgress(D)V

    return-void
.end method

###### Class androidtranscoder.MediaTranscoder.AnonymousClass4.AnonymousClass2 (androidtranscoder.MediaTranscoder$4$2)
.class Landroidtranscoder/MediaTranscoder$4$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidtranscoder/MediaTranscoder$4;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidtranscoder/MediaTranscoder$4;

.field final synthetic val$exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Landroidtranscoder/MediaTranscoder$4;Ljava/lang/Exception;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidtranscoder/MediaTranscoder$4$2;->this$1:Landroidtranscoder/MediaTranscoder$4;

    iput-object p2, p0, Landroidtranscoder/MediaTranscoder$4$2;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidtranscoder/MediaTranscoder$4$2;->val$exception:Ljava/lang/Exception;

    if-nez v0, :cond_c

    .line 2
    iget-object v0, p0, Landroidtranscoder/MediaTranscoder$4$2;->this$1:Landroidtranscoder/MediaTranscoder$4;

    iget-object v0, v0, Landroidtranscoder/MediaTranscoder$4;->val$listener:Landroidtranscoder/MediaTranscoder$Listener;

    invoke-interface {v0}, Landroidtranscoder/MediaTranscoder$Listener;->onTranscodeCompleted()V

    goto :goto_2f

    .line 4
    :cond_c
    iget-object v0, p0, Landroidtranscoder/MediaTranscoder$4$2;->this$1:Landroidtranscoder/MediaTranscoder$4;

    iget-object v0, v0, Landroidtranscoder/MediaTranscoder$4;->val$futureReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_26

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 6
    iget-object v0, p0, Landroidtranscoder/MediaTranscoder$4$2;->this$1:Landroidtranscoder/MediaTranscoder$4;

    iget-object v0, v0, Landroidtranscoder/MediaTranscoder$4;->val$listener:Landroidtranscoder/MediaTranscoder$Listener;

    invoke-interface {v0}, Landroidtranscoder/MediaTranscoder$Listener;->onTranscodeCanceled()V

    goto :goto_2f

    .line 8
    :cond_26
    iget-object v0, p0, Landroidtranscoder/MediaTranscoder$4$2;->this$1:Landroidtranscoder/MediaTranscoder$4;

    iget-object v0, v0, Landroidtranscoder/MediaTranscoder$4;->val$listener:Landroidtranscoder/MediaTranscoder$Listener;

    iget-object v1, p0, Landroidtranscoder/MediaTranscoder$4$2;->val$exception:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Landroidtranscoder/MediaTranscoder$Listener;->onTranscodeFailed(Ljava/lang/Exception;)V

    :goto_2f
    return-void
.end method

###### Class androidtranscoder.MediaTranscoder.Listener (androidtranscoder.MediaTranscoder$Listener)
.class public interface abstract Landroidtranscoder/MediaTranscoder$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidtranscoder/MediaTranscoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onTranscodeCanceled()V
.end method

.method public abstract onTranscodeCompleted()V
.end method

.method public abstract onTranscodeFailed(Ljava/lang/Exception;)V
.end method

.method public abstract onTranscodeProgress(D)V
.end method
