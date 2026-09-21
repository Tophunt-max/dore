###### Class io.dcloud.feature.audio.recorder.RecorderTask (io.dcloud.feature.audio.recorder.RecorderTask)
.class public Lio/dcloud/feature/audio/recorder/RecorderTask;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final DEFAULT_LAME_MP3_BIT_RATE:I = 0x80

.field private static final DEFAULT_LAME_MP3_QUALITY:I = 0x7

.field private static final FRAME_COUNT:I = 0xdc

.field private static final TAG:Ljava/lang/String; = "RecorderTask"


# instance fields
.field private audioRecord:Landroid/media/AudioRecord;

.field bufsize:I

.field private final configs:[I

.field private duration:J

.field private final formats:[I

.field handler:Landroid/os/Handler;

.field private mAacBuffer:[B

.field private mDuration:D

.field private mDurationListener:Lio/dcloud/feature/audio/recorder/HighGradeRecorder$Callback;

.field private mEncodeThread:Lio/dcloud/feature/audio/recorder/DataEncodeThread;

.field private mFormat:Ljava/lang/String;

.field private mPCMBuffer:[S

.field mRecorder:Lio/dcloud/feature/audio/recorder/HighGradeRecorder;

.field private mShouldRecord:Z

.field private mShouldRun:Z

.field private maxDuration:I

.field private outputFile:Ljava/io/File;

.field reallyStart:Z

.field private sampleRates:[I

.field private startTime:J

.field waitingTime:I


# direct methods
.method public constructor <init>(Ljava/io/File;Lio/dcloud/feature/audio/recorder/HighGradeRecorder;Lio/dcloud/feature/audio/recorder/RecordOption;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_6a

    iput-object v1, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->sampleRates:[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_76

    iput-object v2, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->configs:[I

    new-array v2, v1, [I

    .line 4
    fill-array-data v2, :array_7e

    iput-object v2, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->formats:[I

    const/4 v2, 0x0

    .line 13
    iput-object v2, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->audioRecord:Landroid/media/AudioRecord;

    const/4 v2, -0x2

    .line 14
    iput v2, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->bufsize:I

    const/4 v2, 0x0

    .line 15
    iput-boolean v2, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mShouldRun:Z

    .line 16
    iput-boolean v2, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mShouldRecord:Z

    const-wide/16 v3, 0x0

    .line 18
    iput-wide v3, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->startTime:J

    .line 19
    iput-wide v3, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->duration:J

    .line 45
    iput-object p1, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->outputFile:Ljava/io/File;

    .line 46
    iput-object p2, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mRecorder:Lio/dcloud/feature/audio/recorder/HighGradeRecorder;

    .line 47
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->handler:Landroid/os/Handler;

    .line 48
    iget-object p1, p3, Lio/dcloud/feature/audio/recorder/RecordOption;->mFormat:Ljava/lang/String;

    iput-object p1, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mFormat:Ljava/lang/String;

    .line 49
    iget-boolean p1, p3, Lio/dcloud/feature/audio/recorder/RecordOption;->isRateDeft:Z

    const/4 v3, 0x1

    if-nez p1, :cond_5a

    const/4 p1, 0x5

    new-array p1, p1, [I

    .line 50
    iget p3, p3, Lio/dcloud/feature/audio/recorder/RecordOption;->mSamplingRate:I

    aput p3, p1, v2

    const p3, 0xac44

    aput p3, p1, v3

    const/16 p3, 0x5622

    aput p3, p1, v1

    const/4 p3, 0x3

    const/16 v1, 0x2b11

    aput v1, p1, p3

    const/16 p3, 0x1f40

    aput p3, p1, v0

    iput-object p1, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->sampleRates:[I

    .line 52
    :cond_5a
    invoke-virtual {p2}, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->getRecorderState()I

    move-result p1

    if-ne p1, v3, :cond_65

    const/16 p1, 0x3e8

    .line 53
    iput p1, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->waitingTime:I

    goto :goto_69

    :cond_65
    const/16 p1, 0x2710

    .line 55
    iput p1, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->waitingTime:I

    :goto_69
    return-void

    :array_6a
    .array-data 4
        0xac44
        0x5622
        0x2b11
        0x1f40
    .end array-data

    :array_76
    .array-data 4
        0x10
        0xc
    .end array-data

    :array_7e
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method static synthetic access$000(Lio/dcloud/feature/audio/recorder/RecorderTask;)D
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mDuration:D

    return-wide v0
.end method

.method static synthetic access$100(Lio/dcloud/feature/audio/recorder/RecorderTask;)Lio/dcloud/feature/audio/recorder/HighGradeRecorder$Callback;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mDurationListener:Lio/dcloud/feature/audio/recorder/HighGradeRecorder$Callback;

    return-object p0
.end method

.method static synthetic access$200(Lio/dcloud/feature/audio/recorder/RecorderTask;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->maxDuration:I

    return p0
.end method

.method private calVolume([SD)D
    .registers 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_3
    array-length v3, p1

    if-ge v2, v3, :cond_11

    .line 2
    aget-short v3, p1, v2

    aget-short v4, p1, v2

    mul-int v3, v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_11
    long-to-double v0, v0

    div-double/2addr v0, p2

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double p1, p1, v0

    return-wide p1
.end method

.method private cancel()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/audio/recorder/RecorderTask;->stopRecord()V

    return-void
.end method

.method private createRecord(III)V
    .registers 11

    .line 1
    new-instance v6, Landroid/media/AudioRecord;

    iget v5, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->bufsize:I

    const/4 v1, 0x1

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v6, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->audioRecord:Landroid/media/AudioRecord;

    return-void
.end method

.method private init()V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioFormat()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x1

    .line 3
    :goto_b
    iget v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->bufsize:I

    div-int/2addr v0, v1

    .line 4
    rem-int/lit16 v2, v0, 0xdc

    const/16 v3, 0xdc

    if-eqz v2, :cond_1b

    rsub-int v2, v2, 0xdc

    add-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 6
    iput v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->bufsize:I

    .line 8
    :cond_1b
    iget v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->bufsize:I

    new-array v1, v0, [S

    iput-object v1, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mPCMBuffer:[S

    .line 9
    new-array v0, v0, [B

    iput-object v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mAacBuffer:[B

    .line 10
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mFormat:Ljava/lang/String;

    const-string v1, "aac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 11
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v0

    iget-object v1, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v1

    invoke-static {v0, v1}, Lio/dcloud/feature/audio/aac/AacEncode;->getAacEncode(II)Lio/dcloud/feature/audio/aac/AacEncode;

    goto :goto_57

    .line 18
    :cond_3f
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v0

    iget-object v1, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v1

    iget-object v2, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v2

    const/16 v4, 0x80

    const/4 v5, 0x7

    invoke-static {v0, v1, v2, v4, v5}, Lio/dcloud/feature/audio/mp3/SimpleLame;->init(IIIII)V

    .line 25
    :goto_57
    :try_start_57
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->outputFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_73

    .line 26
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->outputFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6e

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 30
    :cond_6e
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->outputFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 32
    :cond_73
    new-instance v0, Lio/dcloud/feature/audio/recorder/DataEncodeThread;

    iget-object v1, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->outputFile:Ljava/io/File;

    iget v2, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->bufsize:I

    iget-object v4, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mFormat:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v4}, Lio/dcloud/feature/audio/recorder/DataEncodeThread;-><init>(Ljava/io/File;ILjava/lang/String;)V

    iput-object v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mEncodeThread:Lio/dcloud/feature/audio/recorder/DataEncodeThread;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 34
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->audioRecord:Landroid/media/AudioRecord;

    iget-object v1, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mEncodeThread:Lio/dcloud/feature/audio/recorder/DataEncodeThread;

    invoke-virtual {v1}, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V

    .line 35
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0, v3}, Landroid/media/AudioRecord;->setPositionNotificationPeriod(I)I
    :try_end_93
    .catch Ljava/io/FileNotFoundException; {:try_start_57 .. :try_end_93} :catch_99
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_93} :catch_94

    goto :goto_9d

    :catch_94
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9d

    :catch_99
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_9d
    return-void
.end method

.method private isFound()Z
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-nez v1, :cond_96

    .line 1
    iget-object v3, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->formats:[I

    array-length v4, v3

    if-ge v2, v4, :cond_96

    .line 2
    aget v3, v3, v2

    const/4 v4, 0x0

    :goto_d
    if-nez v1, :cond_92

    .line 3
    iget-object v5, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->sampleRates:[I

    array-length v6, v5

    if-ge v4, v6, :cond_92

    .line 4
    aget v5, v5, v4

    const/4 v6, 0x0

    :goto_17
    const/4 v7, 0x1

    if-nez v1, :cond_8e

    .line 5
    iget-object v8, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->configs:[I

    array-length v9, v8

    if-ge v6, v9, :cond_8e

    .line 6
    aget v8, v8, v6

    .line 8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Trying to create AudioRecord use: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "RecorderTask"

    invoke-static {v10, v9}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {v5, v8, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v9

    iput v9, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->bufsize:I

    .line 10
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bufsize: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->bufsize:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget v9, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->bufsize:I

    const/4 v11, -0x2

    if-ne v11, v9, :cond_6c

    const-string v7, "invaild params!"

    .line 12
    invoke-static {v10, v7}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b

    :cond_6c
    const/4 v11, -0x1

    if-ne v11, v9, :cond_75

    const-string v7, "Unable to query hardware!"

    .line 16
    invoke-static {v10, v7}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b

    .line 21
    :cond_75
    :try_start_75
    invoke-direct {p0, v5, v8, v3}, Lio/dcloud/feature/audio/recorder/RecorderTask;->createRecord(III)V

    .line 22
    iget-object v8, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v8}, Landroid/media/AudioRecord;->getState()I

    move-result v8
    :try_end_7e
    .catch Ljava/lang/IllegalStateException; {:try_start_75 .. :try_end_7e} :catch_83

    if-eq v8, v7, :cond_81

    goto :goto_8b

    :cond_81
    const/4 v1, 0x1

    goto :goto_8e

    :catch_83
    const-string v7, "Failed to set up recorder!"

    .line 27
    invoke-static {v10, v7}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 28
    iput-object v7, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->audioRecord:Landroid/media/AudioRecord;

    :goto_8b
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_8e
    :goto_8e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d

    :cond_92
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_96
    return v1
.end method

.method private mapFormat(I)I
    .registers 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    const/16 p1, 0x8

    return p1

    :cond_b
    const/16 p1, 0x10

    return p1
.end method


# virtual methods
.method public getDuration()I
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mDuration:D

    double-to-int v0, v0

    return v0
.end method

.method public isRecording()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mShouldRecord:Z

    return v0
.end method

.method public pauseRecord()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mShouldRecord:Z

    return-void
.end method

.method public resumeRecord()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mShouldRecord:Z

    return-void
.end method

.method public run()V
    .registers 16

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    invoke-direct {p0}, Lio/dcloud/feature/audio/recorder/RecorderTask;->isFound()Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "RecorderTask"

    const-string v1, "Sample rate, channel config or format not supported!"

    .line 3
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_11
    invoke-direct {p0}, Lio/dcloud/feature/audio/recorder/RecorderTask;->init()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mShouldRun:Z

    .line 11
    iget-object v1, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v1

    iget-object v2, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getAudioFormat()I

    move-result v2

    invoke-direct {p0, v2}, Lio/dcloud/feature/audio/recorder/RecorderTask;->mapFormat(I)I

    move-result v2

    mul-int v1, v1, v2

    div-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v2

    mul-int v1, v1, v2

    const-wide/16 v2, 0x0

    .line 12
    iput-wide v2, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mDuration:D

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 13
    :cond_39
    :goto_39
    iget-boolean v6, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mShouldRun:Z

    if-eqz v6, :cond_113

    .line 14
    iget-boolean v6, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mShouldRecord:Z

    if-eq v6, v5, :cond_6b

    if-eqz v6, :cond_64

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->startTime:J

    .line 19
    :try_start_49
    iget-object v5, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v5}, Landroid/media/AudioRecord;->startRecording()V

    .line 20
    iget-wide v5, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mDuration:D

    cmpl-double v7, v5, v2

    if-nez v7, :cond_69

    .line 21
    iput-boolean v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->reallyStart:Z

    .line 22
    new-instance v5, Lio/dcloud/feature/audio/recorder/RecorderTask$1;

    invoke-direct {v5, p0}, Lio/dcloud/feature/audio/recorder/RecorderTask$1;-><init>(Lio/dcloud/feature/audio/recorder/RecorderTask;)V

    invoke-static {v5}, Lio/dcloud/feature/audio/recorder/RecorderUtil;->postTaskSafely(Ljava/lang/Runnable;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5e} :catch_5f

    goto :goto_69

    :catch_5f
    move-exception v5

    .line 30
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_69

    .line 33
    :cond_64
    iget-object v5, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v5}, Landroid/media/AudioRecord;->stop()V

    .line 35
    :cond_69
    :goto_69
    iget-boolean v5, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mShouldRecord:Z

    .line 38
    :cond_6b
    iget-boolean v6, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mShouldRecord:Z

    if-eqz v6, :cond_39

    .line 39
    iget-object v6, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mFormat:Ljava/lang/String;

    const-string v7, "aac"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 40
    iget-object v6, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->audioRecord:Landroid/media/AudioRecord;

    iget-object v7, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mAacBuffer:[B

    iget v8, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->bufsize:I

    invoke-virtual {v6, v7, v4, v8}, Landroid/media/AudioRecord;->read([BII)I

    move-result v6

    if-lez v6, :cond_39

    .line 42
    iget-object v7, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mEncodeThread:Lio/dcloud/feature/audio/recorder/DataEncodeThread;

    iget-object v8, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mAacBuffer:[B

    invoke-virtual {v7, v8, v6}, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->addTask([BI)V

    goto :goto_39

    .line 46
    :cond_8d
    iget-object v6, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->audioRecord:Landroid/media/AudioRecord;

    iget-object v7, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mPCMBuffer:[S

    iget v8, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->bufsize:I

    invoke-virtual {v6, v7, v4, v8}, Landroid/media/AudioRecord;->read([SII)I

    move-result v6

    if-lez v6, :cond_39

    int-to-double v7, v6

    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double v9, v9, v7

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double v9, v9, v11

    int-to-double v11, v1

    div-double/2addr v9, v11

    .line 50
    iget-object v11, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mPCMBuffer:[S

    invoke-direct {p0, v11, v7, v8}, Lio/dcloud/feature/audio/recorder/RecorderTask;->calVolume([SD)D

    move-result-wide v7

    .line 52
    iget-wide v11, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mDuration:D

    add-double/2addr v11, v9

    iput-wide v11, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mDuration:D

    .line 53
    iget-object v9, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mDurationListener:Lio/dcloud/feature/audio/recorder/HighGradeRecorder$Callback;

    if-eqz v9, :cond_be

    .line 54
    new-instance v9, Lio/dcloud/feature/audio/recorder/RecorderTask$2;

    invoke-direct {v9, p0, v7, v8}, Lio/dcloud/feature/audio/recorder/RecorderTask$2;-><init>(Lio/dcloud/feature/audio/recorder/RecorderTask;D)V

    invoke-static {v9}, Lio/dcloud/feature/audio/recorder/RecorderUtil;->postTaskSafely(Ljava/lang/Runnable;)V

    .line 69
    :cond_be
    iget-object v7, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v7, :cond_d1

    invoke-virtual {v7}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v7

    if-ne v7, v0, :cond_d1

    .line 70
    iget-object v7, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mEncodeThread:Lio/dcloud/feature/audio/recorder/DataEncodeThread;

    iget-object v8, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mPCMBuffer:[S

    invoke-virtual {v7, v8, v6}, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->addTask([SI)V

    goto/16 :goto_39

    .line 71
    :cond_d1
    iget-object v7, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v7, :cond_39

    invoke-virtual {v7}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_39

    .line 72
    div-int/lit8 v7, v6, 0x2

    new-array v8, v7, [S

    .line 73
    new-array v9, v7, [S

    const/4 v10, 0x0

    :goto_e3
    if-ge v10, v7, :cond_10c

    .line 75
    iget-object v11, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mPCMBuffer:[S

    mul-int/lit8 v12, v10, 0x2

    aget-short v13, v11, v12

    aput-short v13, v8, v10

    add-int/lit8 v13, v12, 0x1

    if-ge v13, v6, :cond_f7

    add-int/lit8 v14, v10, 0x1

    .line 77
    aget-short v13, v11, v13

    aput-short v13, v8, v14

    :cond_f7
    add-int/lit8 v13, v12, 0x2

    if-ge v13, v6, :cond_ff

    .line 80
    aget-short v13, v11, v13

    aput-short v13, v9, v10

    :cond_ff
    add-int/lit8 v12, v12, 0x3

    if-ge v12, v6, :cond_109

    add-int/lit8 v13, v10, 0x1

    .line 83
    aget-short v11, v11, v12

    aput-short v11, v9, v13

    :cond_109
    add-int/lit8 v10, v10, 0x2

    goto :goto_e3

    .line 86
    :cond_10c
    iget-object v6, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mEncodeThread:Lio/dcloud/feature/audio/recorder/DataEncodeThread;

    invoke-virtual {v6, v8, v9, v7}, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->addTask([S[SI)V

    goto/16 :goto_39

    :cond_113
    return-void
.end method

.method public setCallback(Lio/dcloud/feature/audio/recorder/HighGradeRecorder$Callback;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mDurationListener:Lio/dcloud/feature/audio/recorder/HighGradeRecorder$Callback;

    return-void
.end method

.method public setMaxDuration(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->maxDuration:I

    return-void
.end method

.method public startRecording()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mShouldRecord:Z

    return-void
.end method

.method public stopRecord()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mShouldRecord:Z

    .line 2
    iput-boolean v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mShouldRun:Z

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_14

    .line 5
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->audioRecord:Landroid/media/AudioRecord;

    .line 10
    :cond_14
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mEncodeThread:Lio/dcloud/feature/audio/recorder/DataEncodeThread;

    invoke-virtual {v0}, Lio/dcloud/feature/audio/recorder/DataEncodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

###### Class io.dcloud.feature.audio.recorder.RecorderTask.AnonymousClass1 (io.dcloud.feature.audio.recorder.RecorderTask$1)
.class Lio/dcloud/feature/audio/recorder/RecorderTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/audio/recorder/RecorderTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/audio/recorder/RecorderTask;


# direct methods
.method constructor <init>(Lio/dcloud/feature/audio/recorder/RecorderTask;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/audio/recorder/RecorderTask$1;->this$0:Lio/dcloud/feature/audio/recorder/RecorderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask$1;->this$0:Lio/dcloud/feature/audio/recorder/RecorderTask;

    iget-object v0, v0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mRecorder:Lio/dcloud/feature/audio/recorder/HighGradeRecorder;

    invoke-virtual {v0}, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->onstart()V

    return-void
.end method

###### Class io.dcloud.feature.audio.recorder.RecorderTask.AnonymousClass2 (io.dcloud.feature.audio.recorder.RecorderTask$2)
.class Lio/dcloud/feature/audio/recorder/RecorderTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/audio/recorder/RecorderTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/audio/recorder/RecorderTask;

.field final synthetic val$volume:D


# direct methods
.method constructor <init>(Lio/dcloud/feature/audio/recorder/RecorderTask;D)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/audio/recorder/RecorderTask$2;->this$0:Lio/dcloud/feature/audio/recorder/RecorderTask;

    iput-wide p2, p0, Lio/dcloud/feature/audio/recorder/RecorderTask$2;->val$volume:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask$2;->this$0:Lio/dcloud/feature/audio/recorder/RecorderTask;

    invoke-static {v0}, Lio/dcloud/feature/audio/recorder/RecorderTask;->access$100(Lio/dcloud/feature/audio/recorder/RecorderTask;)Lio/dcloud/feature/audio/recorder/HighGradeRecorder$Callback;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/audio/recorder/RecorderTask$2;->this$0:Lio/dcloud/feature/audio/recorder/RecorderTask;

    invoke-static {v1}, Lio/dcloud/feature/audio/recorder/RecorderTask;->access$000(Lio/dcloud/feature/audio/recorder/RecorderTask;)D

    move-result-wide v1

    iget-wide v3, p0, Lio/dcloud/feature/audio/recorder/RecorderTask$2;->val$volume:D

    invoke-interface {v0, v1, v2, v3, v4}, Lio/dcloud/feature/audio/recorder/HighGradeRecorder$Callback;->onRecording(DD)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask$2;->this$0:Lio/dcloud/feature/audio/recorder/RecorderTask;

    invoke-static {v0}, Lio/dcloud/feature/audio/recorder/RecorderTask;->access$200(Lio/dcloud/feature/audio/recorder/RecorderTask;)I

    move-result v0

    if-lez v0, :cond_3b

    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask$2;->this$0:Lio/dcloud/feature/audio/recorder/RecorderTask;

    invoke-static {v0}, Lio/dcloud/feature/audio/recorder/RecorderTask;->access$000(Lio/dcloud/feature/audio/recorder/RecorderTask;)D

    move-result-wide v0

    iget-object v2, p0, Lio/dcloud/feature/audio/recorder/RecorderTask$2;->this$0:Lio/dcloud/feature/audio/recorder/RecorderTask;

    invoke-static {v2}, Lio/dcloud/feature/audio/recorder/RecorderTask;->access$200(Lio/dcloud/feature/audio/recorder/RecorderTask;)I

    move-result v2

    int-to-double v2, v2

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_3b

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask$2;->this$0:Lio/dcloud/feature/audio/recorder/RecorderTask;

    iget-object v0, v0, Lio/dcloud/feature/audio/recorder/RecorderTask;->mRecorder:Lio/dcloud/feature/audio/recorder/HighGradeRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lio/dcloud/feature/audio/recorder/HighGradeRecorder;->stop(I)V

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/RecorderTask$2;->this$0:Lio/dcloud/feature/audio/recorder/RecorderTask;

    invoke-static {v0}, Lio/dcloud/feature/audio/recorder/RecorderTask;->access$100(Lio/dcloud/feature/audio/recorder/RecorderTask;)Lio/dcloud/feature/audio/recorder/HighGradeRecorder$Callback;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/feature/audio/recorder/HighGradeRecorder$Callback;->onMaxDurationReached()V

    :cond_3b
    return-void
.end method
