###### Class io.dcloud.feature.audio.recorder.DataEncodeThread (io.dcloud.feature.audio.recorder.DataEncodeThread)
.class public Lio/dcloud/feature/audio/recorder/DataEncodeThread;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioRecord$OnRecordPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;,
        Lio/dcloud/feature/audio/recorder/DataEncodeThread$StopHandler;
    }
.end annotation


# static fields
.field public static final PROCESS_STOP:I = 0x1


# instance fields
.field private mBuffer:[B

.field private mFileOutputStream:Ljava/io/FileOutputStream;

.field private mFormat:Ljava/lang/String;

.field private mHandler:Lio/dcloud/feature/audio/recorder/DataEncodeThread$StopHandler;

.field private mHandlerInitLatch:Ljava/util/concurrent/CountDownLatch;

.field private mTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mHandlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mTasks:Ljava/util/List;

    .line 150
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mFileOutputStream:Ljava/io/FileOutputStream;

    mul-int/lit8 p2, p2, 0x2

    int-to-double p1, p2

    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    mul-double p1, p1, v0

    const-wide v0, 0x40bc200000000000L    # 7200.0

    add-double/2addr p1, v0

    double-to-int p1, p1

    .line 151
    new-array p1, p1, [B

    iput-object p1, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mBuffer:[B

    .line 152
    iput-object p3, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mFormat:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/audio/recorder/DataEncodeThread;)I
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->processData()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lio/dcloud/feature/audio/recorder/DataEncodeThread;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->flushAndRelease()V

    return-void
.end method

.method private flushAndRelease()V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mFormat:Ljava/lang/String;

    const-string v1, "aac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    .line 3
    :try_start_b
    invoke-static {}, Lio/dcloud/feature/audio/aac/AacEncode;->getAacEncode()Lio/dcloud/feature/audio/aac/AacEncode;

    move-result-object v0

    iget-object v3, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mBuffer:[B

    invoke-virtual {v0, v3}, Lio/dcloud/feature/audio/aac/AacEncode;->offerEncoder([B)[B

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mBuffer:[B

    .line 4
    array-length v0, v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_19

    goto :goto_25

    :catch_19
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_25

    .line 9
    :cond_1f
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mBuffer:[B

    invoke-static {v0}, Lio/dcloud/feature/audio/mp3/SimpleLame;->flush([B)I

    move-result v0

    :goto_25
    if-lez v0, :cond_62

    const/4 v3, 0x0

    .line 13
    :try_start_28
    iget-object v4, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mFileOutputStream:Ljava/io/FileOutputStream;

    iget-object v5, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mBuffer:[B

    invoke-virtual {v4, v5, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2f} :catch_40
    .catchall {:try_start_28 .. :try_end_2f} :catchall_3e

    .line 17
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mFileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_62

    .line 19
    :try_start_33
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 20
    iput-object v3, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mFileOutputStream:Ljava/io/FileOutputStream;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_38} :catch_39

    goto :goto_62

    :catch_39
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_62

    :catchall_3e
    move-exception v0

    goto :goto_53

    :catch_40
    move-exception v0

    .line 23
    :try_start_41
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_3e

    .line 25
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mFileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_62

    .line 27
    :try_start_48
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 28
    iput-object v3, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mFileOutputStream:Ljava/io/FileOutputStream;
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4d} :catch_4e

    goto :goto_62

    :catch_4e
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_62

    .line 31
    :goto_53
    iget-object v1, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mFileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_61

    .line 33
    :try_start_57
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 34
    iput-object v3, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mFileOutputStream:Ljava/io/FileOutputStream;
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5c} :catch_5d

    goto :goto_61

    :catch_5d
    move-exception v1

    .line 36
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 39
    :cond_61
    :goto_61
    throw v0

    .line 41
    :cond_62
    :goto_62
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 42
    invoke-static {}, Lio/dcloud/feature/audio/aac/AacEncode;->getAacEncode()Lio/dcloud/feature/audio/aac/AacEncode;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/audio/aac/AacEncode;->close()V

    goto :goto_75

    .line 44
    :cond_72
    invoke-static {}, Lio/dcloud/feature/audio/mp3/SimpleLame;->close()V

    :goto_75
    return-void
.end method

.method private processData()I
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_67

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mTasks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;

    .line 3
    invoke-virtual {v0}, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;->getData()[S

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;->getRightData()[S

    .line 5
    invoke-virtual {v0}, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;->getReadSize()I

    move-result v3

    .line 6
    invoke-virtual {v0}, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;->getRightData()[S

    move-result-object v4

    if-eqz v4, :cond_2e

    invoke-virtual {v0}, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;->getRightData()[S

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_2e

    .line 7
    invoke-virtual {v0}, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;->getRightData()[S

    move-result-object v4

    goto :goto_32

    .line 9
    :cond_2e
    invoke-virtual {v0}, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;->getData()[S

    move-result-object v4

    .line 12
    :goto_32
    iget-object v5, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mFormat:Ljava/lang/String;

    const-string v6, "aac"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 14
    :try_start_3c
    invoke-static {}, Lio/dcloud/feature/audio/aac/AacEncode;->getAacEncode()Lio/dcloud/feature/audio/aac/AacEncode;

    move-result-object v2

    invoke-virtual {v0}, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;->getByteData()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/dcloud/feature/audio/aac/AacEncode;->offerEncoder([B)[B

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mBuffer:[B

    .line 15
    array-length v0, v0
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4b} :catch_4c

    goto :goto_58

    :catch_4c
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_58

    .line 20
    :cond_52
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mBuffer:[B

    invoke-static {v2, v4, v3, v0}, Lio/dcloud/feature/audio/mp3/SimpleLame;->encode([S[SI[B)I

    move-result v0

    :goto_58
    if-lez v0, :cond_66

    .line 25
    :try_start_5a
    iget-object v2, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mFileOutputStream:Ljava/io/FileOutputStream;

    iget-object v4, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mBuffer:[B

    invoke-virtual {v2, v4, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_61} :catch_62

    goto :goto_66

    :catch_62
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_66
    :goto_66
    return v3

    :cond_67
    return v1
.end method


# virtual methods
.method public addTask([BI)V
    .registers 5

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mTasks:Ljava/util/List;

    new-instance v1, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;

    invoke-direct {v1, p0, p1, p2}, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;-><init>(Lio/dcloud/feature/audio/recorder/DataEncodeThread;[BI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTask([SI)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mTasks:Ljava/util/List;

    new-instance v1, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;

    invoke-direct {v1, p0, p1, p2}, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;-><init>(Lio/dcloud/feature/audio/recorder/DataEncodeThread;[SI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTask([S[SI)V
    .registers 6

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mTasks:Ljava/util/List;

    new-instance v1, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;-><init>(Lio/dcloud/feature/audio/recorder/DataEncodeThread;[S[SI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mHandlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 5
    :goto_a
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mHandler:Lio/dcloud/feature/audio/recorder/DataEncodeThread$StopHandler;

    return-object v0
.end method

.method public onMarkerReached(Landroid/media/AudioRecord;)V
    .registers 2

    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioRecord;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->processData()I

    return-void
.end method

.method public run()V
    .registers 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    new-instance v0, Lio/dcloud/feature/audio/recorder/DataEncodeThread$StopHandler;

    invoke-direct {v0, p0}, Lio/dcloud/feature/audio/recorder/DataEncodeThread$StopHandler;-><init>(Lio/dcloud/feature/audio/recorder/DataEncodeThread;)V

    iput-object v0, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mHandler:Lio/dcloud/feature/audio/recorder/DataEncodeThread$StopHandler;

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->mHandlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

###### Class io.dcloud.feature.audio.recorder.DataEncodeThread.StopHandler (io.dcloud.feature.audio.recorder.DataEncodeThread$StopHandler)
.class Lio/dcloud/feature/audio/recorder/DataEncodeThread$StopHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/audio/recorder/DataEncodeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StopHandler"
.end annotation


# instance fields
.field encodeThread:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/dcloud/feature/audio/recorder/DataEncodeThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/dcloud/feature/audio/recorder/DataEncodeThread;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread$StopHandler;->encodeThread:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread$StopHandler;->encodeThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;

    .line 4
    :goto_d
    invoke-static {v0}, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->access$000(Lio/dcloud/feature/audio/recorder/DataEncodeThread;)I

    move-result v1

    if-lez v1, :cond_14

    goto :goto_d

    :cond_14
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    invoke-static {v0}, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->access$100(Lio/dcloud/feature/audio/recorder/DataEncodeThread;)V

    .line 8
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 10
    :cond_22
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

###### Class io.dcloud.feature.audio.recorder.DataEncodeThread.Task (io.dcloud.feature.audio.recorder.DataEncodeThread$Task)
.class Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/audio/recorder/DataEncodeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation


# instance fields
.field private byteRawData:[B

.field private rawData:[S

.field private readSize:I

.field private rightData:[S

.field final synthetic this$0:Lio/dcloud/feature/audio/recorder/DataEncodeThread;


# direct methods
.method public constructor <init>(Lio/dcloud/feature/audio/recorder/DataEncodeThread;[BI)V
    .registers 4

    .line 4
    iput-object p1, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;->this$0:Lio/dcloud/feature/audio/recorder/DataEncodeThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;->byteRawData:[B

    .line 6
    iput p3, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;->readSize:I

    return-void
.end method

.method public constructor <init>(Lio/dcloud/feature/audio/recorder/DataEncodeThread;[SI)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;->this$0:Lio/dcloud/feature/audio/recorder/DataEncodeThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p2}, [S->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [S

    iput-object p1, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;->rawData:[S

    .line 3
    iput p3, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;->readSize:I

    return-void
.end method

.method public constructor <init>(Lio/dcloud/feature/audio/recorder/DataEncodeThread;[S[SI)V
    .registers 5

    .line 7
    iput-object p1, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;->this$0:Lio/dcloud/feature/audio/recorder/DataEncodeThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p2}, [S->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [S

    iput-object p1, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;->rawData:[S

    .line 9
    invoke-virtual {p3}, [S->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [S

    iput-object p1, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;->rightData:[S

    .line 10
    iput p4, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;->readSize:I

    return-void
.end method


# virtual methods
.method public getByteData()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;->byteRawData:[B

    return-object v0
.end method

.method public getData()[S
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;->rawData:[S

    return-object v0
.end method

.method public getReadSize()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;->readSize:I

    return v0
.end method

.method public getRightData()[S
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/DataEncodeThread$Task;->rightData:[S

    return-object v0
.end method
