###### Class io.dcloud.feature.audio.recorder.AudioRecorder (io.dcloud.feature.audio.recorder.AudioRecorder)
.class public Lio/dcloud/feature/audio/recorder/AudioRecorder;
.super Lio/dcloud/feature/audio/recorder/AbsRecorder;
.source "SourceFile"


# instance fields
.field private mRecorder:Landroid/media/MediaRecorder;


# direct methods
.method public constructor <init>(Lio/dcloud/feature/audio/recorder/RecordOption;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/audio/recorder/AbsRecorder;-><init>()V

    .line 2
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/audio/recorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 4
    :try_start_a
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 6
    iget-object v0, p1, Lio/dcloud/feature/audio/recorder/RecordOption;->mFileName:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 8
    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/adapter/io/DHFile;->createNewFile(Ljava/lang/Object;)B

    .line 10
    :cond_22
    iget-object v2, p0, Lio/dcloud/feature/audio/recorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_27} :catch_ae

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 14
    :try_start_29
    iget-object v4, p0, Lio/dcloud/feature/audio/recorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    iget v5, p1, Lio/dcloud/feature/audio/recorder/RecordOption;->mSamplingRate:I

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 15
    iget v4, p1, Lio/dcloud/feature/audio/recorder/RecordOption;->mSamplingRate:I

    const v5, 0xac44

    if-ne v4, v5, :cond_42

    .line 16
    iget-object v4, p0, Lio/dcloud/feature/audio/recorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 17
    iget-object v4, p0, Lio/dcloud/feature/audio/recorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto :goto_a8

    :cond_42
    const/16 v5, 0x3e80

    if-ne v4, v5, :cond_53

    .line 19
    iget-object v4, p0, Lio/dcloud/feature/audio/recorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 20
    iget-object v4, p0, Lio/dcloud/feature/audio/recorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto :goto_a8

    :cond_53
    const/16 v5, 0x1f40

    if-ne v4, v5, :cond_62

    .line 22
    iget-object v4, p0, Lio/dcloud/feature/audio/recorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 23
    iget-object v4, p0, Lio/dcloud/feature/audio/recorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto :goto_a8

    .line 25
    :cond_62
    iget-object v4, p0, Lio/dcloud/feature/audio/recorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 26
    iget-object v4, p0, Lio/dcloud/feature/audio/recorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_6c} :catch_6d

    goto :goto_a8

    :catch_6d
    move-exception v4

    .line 29
    :try_start_6e
    iget-object v5, p0, Lio/dcloud/feature/audio/recorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->reset()V

    .line 30
    iget-object v5, p0, Lio/dcloud/feature/audio/recorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 31
    iget-object v5, p0, Lio/dcloud/feature/audio/recorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    const-string v0, "HighGradeRecorder.getRecorderInstence"

    .line 32
    invoke-static {v0, v4}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    iget-object p1, p1, Lio/dcloud/feature/audio/recorder/RecordOption;->mFormat:Ljava/lang/String;

    const-string v0, "3gp"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_92

    .line 34
    iget-object p1, p0, Lio/dcloud/feature/audio/recorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    goto :goto_a3

    .line 35
    :cond_92
    sget p1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v0, 0xa

    if-lt p1, v0, :cond_9e

    .line 36
    iget-object p1, p0, Lio/dcloud/feature/audio/recorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    goto :goto_a3

    .line 38
    :cond_9e
    iget-object p1, p0, Lio/dcloud/feature/audio/recorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 40
    :goto_a3
    iget-object p1, p0, Lio/dcloud/feature/audio/recorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 42
    :goto_a8
    iget-object p1, p0, Lio/dcloud/feature/audio/recorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_ad} :catch_ae

    goto :goto_b2

    :catch_ae
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_b2
    return-void
.end method


# virtual methods
.method public pause()V
    .registers 1

    return-void
.end method

.method public release()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    return-void
.end method

.method public resume()V
    .registers 1

    return-void
.end method

.method public start()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    return-void
.end method

.method public stop()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/recorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    return-void
.end method
