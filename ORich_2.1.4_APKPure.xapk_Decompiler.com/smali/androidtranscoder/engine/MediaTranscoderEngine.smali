###### Class androidtranscoder.engine.MediaTranscoderEngine (androidtranscoder.engine.MediaTranscoderEngine)
.class public Landroidtranscoder/engine/MediaTranscoderEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;
    }
.end annotation


# static fields
.field private static final PROGRESS_INTERVAL_STEPS:J = 0xaL

.field private static final PROGRESS_UNKNOWN:D = -1.0

.field private static final SLEEP_TO_WAIT_TRACK_TRANSCODERS:J = 0xaL

.field private static final TAG:Ljava/lang/String; = "MediaTranscoderEngine"


# instance fields
.field private mAudioTrackTranscoder:Landroidtranscoder/engine/TrackTranscoder;

.field private mDurationUs:J

.field private mExtractor:Landroid/media/MediaExtractor;

.field private mInputFileDescriptor:Ljava/io/FileDescriptor;

.field private mMuxer:Landroid/media/MediaMuxer;

.field private volatile mProgress:D

.field private mProgressCallback:Landroidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;

.field private mVideoTrackTranscoder:Landroidtranscoder/engine/TrackTranscoder;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroidtranscoder/engine/MediaTranscoderEngine;)Landroidtranscoder/engine/TrackTranscoder;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Landroidtranscoder/engine/TrackTranscoder;

    return-object p0
.end method

.method static synthetic access$100(Landroidtranscoder/engine/MediaTranscoderEngine;)Landroidtranscoder/engine/TrackTranscoder;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Landroidtranscoder/engine/TrackTranscoder;

    return-object p0
.end method

.method private runPipelines()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mDurationUs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_13

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 3
    iput-wide v0, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mProgress:D

    .line 4
    iget-object v4, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mProgressCallback:Landroidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;

    if-eqz v4, :cond_13

    invoke-interface {v4, v0, v1}, Landroidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;->onProgress(D)V

    :cond_13
    move-wide v0, v2

    .line 6
    :cond_14
    :goto_14
    iget-object v4, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Landroidtranscoder/engine/TrackTranscoder;

    invoke-interface {v4}, Landroidtranscoder/engine/TrackTranscoder;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_26

    iget-object v4, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Landroidtranscoder/engine/TrackTranscoder;

    invoke-interface {v4}, Landroidtranscoder/engine/TrackTranscoder;->isFinished()Z

    move-result v4

    if-nez v4, :cond_25

    goto :goto_26

    :cond_25
    return-void

    .line 7
    :cond_26
    :goto_26
    iget-object v4, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Landroidtranscoder/engine/TrackTranscoder;

    invoke-interface {v4}, Landroidtranscoder/engine/TrackTranscoder;->stepPipeline()Z

    move-result v4

    if-nez v4, :cond_39

    iget-object v4, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Landroidtranscoder/engine/TrackTranscoder;

    .line 8
    invoke-interface {v4}, Landroidtranscoder/engine/TrackTranscoder;->stepPipeline()Z

    move-result v4

    if-eqz v4, :cond_37

    goto :goto_39

    :cond_37
    const/4 v4, 0x0

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 v4, 0x1

    :goto_3a
    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    .line 10
    iget-wide v5, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mDurationUs:J

    const-wide/16 v7, 0xa

    cmp-long v9, v5, v2

    if-lez v9, :cond_8b

    rem-long v5, v0, v7

    cmp-long v9, v5, v2

    if-nez v9, :cond_8b

    .line 11
    iget-object v5, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Landroidtranscoder/engine/TrackTranscoder;

    invoke-interface {v5}, Landroidtranscoder/engine/TrackTranscoder;->isFinished()Z

    move-result v5

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-eqz v5, :cond_57

    move-wide v5, v9

    goto :goto_66

    :cond_57
    iget-object v5, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Landroidtranscoder/engine/TrackTranscoder;

    invoke-interface {v5}, Landroidtranscoder/engine/TrackTranscoder;->getWrittenPresentationTimeUs()J

    move-result-wide v5

    long-to-double v5, v5

    iget-wide v11, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mDurationUs:J

    long-to-double v11, v11

    div-double/2addr v5, v11

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 12
    :goto_66
    iget-object v11, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Landroidtranscoder/engine/TrackTranscoder;

    invoke-interface {v11}, Landroidtranscoder/engine/TrackTranscoder;->isFinished()Z

    move-result v11

    if-eqz v11, :cond_6f

    goto :goto_7e

    :cond_6f
    iget-object v11, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Landroidtranscoder/engine/TrackTranscoder;

    invoke-interface {v11}, Landroidtranscoder/engine/TrackTranscoder;->getWrittenPresentationTimeUs()J

    move-result-wide v11

    long-to-double v11, v11

    iget-wide v13, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mDurationUs:J

    long-to-double v13, v13

    div-double/2addr v11, v13

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    :goto_7e
    add-double/2addr v5, v9

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v9

    .line 14
    iput-wide v5, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mProgress:D

    .line 15
    iget-object v9, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mProgressCallback:Landroidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;

    if-eqz v9, :cond_8b

    invoke-interface {v9, v5, v6}, Landroidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;->onProgress(D)V

    :cond_8b
    if-nez v4, :cond_14

    .line 18
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_14
.end method

.method private setupMetadata()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2
    iget-object v1, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mInputFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    const/16 v1, 0x18

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    :try_start_10
    iget-object v2, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_19} :catch_1a

    goto :goto_1b

    :catch_1a
    nop

    .line 11
    :goto_1b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const-string v3, "MediaTranscoderEngine"

    if-lt v1, v2, :cond_56

    const/16 v1, 0x17

    .line 12
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 14
    new-instance v2, Landroidtranscoder/utils/ISO6709LocationParser;

    invoke-direct {v2}, Landroidtranscoder/utils/ISO6709LocationParser;-><init>()V

    invoke-virtual {v2, v1}, Landroidtranscoder/utils/ISO6709LocationParser;->parse(Ljava/lang/String;)[F

    move-result-object v2

    if-eqz v2, :cond_42

    .line 16
    iget-object v1, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x1

    aget v2, v2, v5

    invoke-virtual {v1, v4, v2}, Landroid/media/MediaMuxer;->setLocation(FF)V

    goto :goto_56

    .line 18
    :cond_42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse the location metadata: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    :goto_56
    const/16 v1, 0x9

    .line 24
    :try_start_58
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    iput-wide v0, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mDurationUs:J
    :try_end_66
    .catch Ljava/lang/NumberFormatException; {:try_start_58 .. :try_end_66} :catch_67

    goto :goto_6b

    :catch_67
    const-wide/16 v0, -0x1

    .line 26
    iput-wide v0, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mDurationUs:J

    .line 28
    :goto_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duration (us): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mDurationUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setupTrackTranscoders(Landroidtranscoder/format/MediaFormatStrategy;)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Landroidtranscoder/utils/MediaExtractorUtils;->getFirstVideoAndAudioTrack(Landroid/media/MediaExtractor;)Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;

    move-result-object v0

    .line 2
    iget-object v1, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackFormat:Landroid/media/MediaFormat;

    invoke-interface {p1, v1}, Landroidtranscoder/format/MediaFormatStrategy;->createVideoOutputFormat(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object v1

    .line 3
    iget-object v2, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackFormat:Landroid/media/MediaFormat;

    invoke-interface {p1, v2}, Landroidtranscoder/format/MediaFormatStrategy;->createAudioOutputFormat(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object p1

    if-nez v1, :cond_1f

    if-eqz p1, :cond_17

    goto :goto_1f

    .line 5
    :cond_17
    new-instance p1, Landroidtranscoder/engine/InvalidOutputFormatException;

    const-string v0, "MediaFormatStrategy returned pass-through for both video and audio. No transcoding is necessary."

    invoke-direct {p1, v0}, Landroidtranscoder/engine/InvalidOutputFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1f
    :goto_1f
    new-instance p1, Landroidtranscoder/engine/QueuedMuxer;

    iget-object v2, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;

    new-instance v3, Landroidtranscoder/engine/MediaTranscoderEngine$1;

    invoke-direct {v3, p0}, Landroidtranscoder/engine/MediaTranscoderEngine$1;-><init>(Landroidtranscoder/engine/MediaTranscoderEngine;)V

    invoke-direct {p1, v2, v3}, Landroidtranscoder/engine/QueuedMuxer;-><init>(Landroid/media/MediaMuxer;Landroidtranscoder/engine/QueuedMuxer$Listener;)V

    if-nez v1, :cond_3b

    .line 16
    new-instance v1, Landroidtranscoder/engine/PassThroughTrackTranscoder;

    iget-object v2, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    iget v3, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackIndex:I

    sget-object v4, Landroidtranscoder/engine/QueuedMuxer$SampleType;->VIDEO:Landroidtranscoder/engine/QueuedMuxer$SampleType;

    invoke-direct {v1, v2, v3, p1, v4}, Landroidtranscoder/engine/PassThroughTrackTranscoder;-><init>(Landroid/media/MediaExtractor;ILandroidtranscoder/engine/QueuedMuxer;Landroidtranscoder/engine/QueuedMuxer$SampleType;)V

    iput-object v1, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Landroidtranscoder/engine/TrackTranscoder;

    goto :goto_46

    .line 18
    :cond_3b
    new-instance v2, Landroidtranscoder/engine/VideoTrackTranscoder;

    iget-object v3, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    iget v4, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackIndex:I

    invoke-direct {v2, v3, v4, v1, p1}, Landroidtranscoder/engine/VideoTrackTranscoder;-><init>(Landroid/media/MediaExtractor;ILandroid/media/MediaFormat;Landroidtranscoder/engine/QueuedMuxer;)V

    iput-object v2, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Landroidtranscoder/engine/TrackTranscoder;

    .line 20
    :goto_46
    iget-object v1, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Landroidtranscoder/engine/TrackTranscoder;

    invoke-interface {v1}, Landroidtranscoder/engine/TrackTranscoder;->setup()V

    .line 21
    new-instance v1, Landroidtranscoder/engine/PassThroughTrackTranscoder;

    iget-object v2, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    iget v3, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackIndex:I

    sget-object v4, Landroidtranscoder/engine/QueuedMuxer$SampleType;->AUDIO:Landroidtranscoder/engine/QueuedMuxer$SampleType;

    invoke-direct {v1, v2, v3, p1, v4}, Landroidtranscoder/engine/PassThroughTrackTranscoder;-><init>(Landroid/media/MediaExtractor;ILandroidtranscoder/engine/QueuedMuxer;Landroidtranscoder/engine/QueuedMuxer$SampleType;)V

    iput-object v1, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Landroidtranscoder/engine/TrackTranscoder;

    .line 23
    invoke-interface {v1}, Landroidtranscoder/engine/TrackTranscoder;->setup()V

    .line 24
    iget-object p1, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    iget v1, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackIndex:I

    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 25
    iget-object p1, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    iget v0, v0, Landroidtranscoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackIndex:I

    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    return-void
.end method


# virtual methods
.method public getProgress()D
    .registers 3

    .line 1
    iget-wide v0, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mProgress:D

    return-wide v0
.end method

.method public getProgressCallback()Landroidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mProgressCallback:Landroidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;

    return-object v0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mInputFileDescriptor:Ljava/io/FileDescriptor;

    return-void
.end method

.method public setProgressCallback(Landroidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mProgressCallback:Landroidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;

    return-void
.end method

.method public transcodeVideo(Ljava/lang/String;Landroidtranscoder/format/MediaFormatStrategy;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "Failed to release muxer."

    const-string v1, "MediaTranscoderEngine"

    const-string v2, "Could not shutdown extractor, codecs and muxer pipeline."

    const-string v3, "Output path cannot be null."

    .line 68
    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1
    iget-object v3, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mInputFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v3, :cond_95

    const/4 v3, 0x0

    .line 6
    :try_start_10
    new-instance v4, Landroid/media/MediaExtractor;

    invoke-direct {v4}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v4, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    .line 7
    iget-object v5, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mInputFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v4, v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 8
    new-instance v4, Landroid/media/MediaMuxer;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;

    .line 9
    invoke-direct {p0}, Landroidtranscoder/engine/MediaTranscoderEngine;->setupMetadata()V

    .line 10
    invoke-direct {p0, p2}, Landroidtranscoder/engine/MediaTranscoderEngine;->setupTrackTranscoders(Landroidtranscoder/format/MediaFormatStrategy;)V

    .line 11
    invoke-direct {p0}, Landroidtranscoder/engine/MediaTranscoderEngine;->runPipelines()V

    .line 12
    iget-object p1, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->stop()V
    :try_end_32
    .catchall {:try_start_10 .. :try_end_32} :catchall_63

    .line 15
    :try_start_32
    iget-object p1, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Landroidtranscoder/engine/TrackTranscoder;

    if-eqz p1, :cond_3b

    .line 16
    invoke-interface {p1}, Landroidtranscoder/engine/TrackTranscoder;->release()V

    .line 17
    iput-object v3, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Landroidtranscoder/engine/TrackTranscoder;

    .line 19
    :cond_3b
    iget-object p1, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Landroidtranscoder/engine/TrackTranscoder;

    if-eqz p1, :cond_44

    .line 20
    invoke-interface {p1}, Landroidtranscoder/engine/TrackTranscoder;->release()V

    .line 21
    iput-object v3, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Landroidtranscoder/engine/TrackTranscoder;

    .line 23
    :cond_44
    iget-object p1, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    if-eqz p1, :cond_4d

    .line 24
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->release()V

    .line 25
    iput-object v3, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_4d} :catch_5c

    .line 33
    :cond_4d
    :try_start_4d
    iget-object p1, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz p1, :cond_5b

    .line 34
    invoke-virtual {p1}, Landroid/media/MediaMuxer;->release()V

    .line 35
    iput-object v3, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_56
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_56} :catch_57

    goto :goto_5b

    :catch_57
    move-exception p1

    .line 38
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5b
    :goto_5b
    return-void

    :catch_5c
    move-exception p1

    .line 39
    new-instance p2, Ljava/lang/Error;

    invoke-direct {p2, v2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catchall_63
    move-exception p1

    .line 40
    :try_start_64
    iget-object p2, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Landroidtranscoder/engine/TrackTranscoder;

    if-eqz p2, :cond_6d

    .line 41
    invoke-interface {p2}, Landroidtranscoder/engine/TrackTranscoder;->release()V

    .line 42
    iput-object v3, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Landroidtranscoder/engine/TrackTranscoder;

    .line 44
    :cond_6d
    iget-object p2, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Landroidtranscoder/engine/TrackTranscoder;

    if-eqz p2, :cond_76

    .line 45
    invoke-interface {p2}, Landroidtranscoder/engine/TrackTranscoder;->release()V

    .line 46
    iput-object v3, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Landroidtranscoder/engine/TrackTranscoder;

    .line 48
    :cond_76
    iget-object p2, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    if-eqz p2, :cond_7f

    .line 49
    invoke-virtual {p2}, Landroid/media/MediaExtractor;->release()V

    .line 50
    iput-object v3, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;
    :try_end_7f
    .catch Ljava/lang/RuntimeException; {:try_start_64 .. :try_end_7f} :catch_8e

    .line 58
    :cond_7f
    :try_start_7f
    iget-object p2, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz p2, :cond_8d

    .line 59
    invoke-virtual {p2}, Landroid/media/MediaMuxer;->release()V

    .line 60
    iput-object v3, p0, Landroidtranscoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_88
    .catch Ljava/lang/RuntimeException; {:try_start_7f .. :try_end_88} :catch_89

    goto :goto_8d

    :catch_89
    move-exception p2

    .line 63
    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    :cond_8d
    :goto_8d
    throw p1

    :catch_8e
    move-exception p1

    .line 66
    new-instance p2, Ljava/lang/Error;

    invoke-direct {p2, v2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 67
    :cond_95
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Data source is not set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class androidtranscoder.engine.MediaTranscoderEngine.AnonymousClass1 (androidtranscoder.engine.MediaTranscoderEngine$1)
.class Landroidtranscoder/engine/MediaTranscoderEngine$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidtranscoder/engine/QueuedMuxer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidtranscoder/engine/MediaTranscoderEngine;->setupTrackTranscoders(Landroidtranscoder/format/MediaFormatStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidtranscoder/engine/MediaTranscoderEngine;


# direct methods
.method constructor <init>(Landroidtranscoder/engine/MediaTranscoderEngine;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidtranscoder/engine/MediaTranscoderEngine$1;->this$0:Landroidtranscoder/engine/MediaTranscoderEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetermineOutputFormat()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidtranscoder/engine/MediaTranscoderEngine$1;->this$0:Landroidtranscoder/engine/MediaTranscoderEngine;

    invoke-static {v0}, Landroidtranscoder/engine/MediaTranscoderEngine;->access$000(Landroidtranscoder/engine/MediaTranscoderEngine;)Landroidtranscoder/engine/TrackTranscoder;

    move-result-object v0

    invoke-interface {v0}, Landroidtranscoder/engine/TrackTranscoder;->getDeterminedFormat()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Landroidtranscoder/engine/MediaFormatValidator;->validateVideoOutputFormat(Landroid/media/MediaFormat;)V

    .line 2
    iget-object v0, p0, Landroidtranscoder/engine/MediaTranscoderEngine$1;->this$0:Landroidtranscoder/engine/MediaTranscoderEngine;

    invoke-static {v0}, Landroidtranscoder/engine/MediaTranscoderEngine;->access$100(Landroidtranscoder/engine/MediaTranscoderEngine;)Landroidtranscoder/engine/TrackTranscoder;

    move-result-object v0

    invoke-interface {v0}, Landroidtranscoder/engine/TrackTranscoder;->getDeterminedFormat()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Landroidtranscoder/engine/MediaFormatValidator;->validateAudioOutputFormat(Landroid/media/MediaFormat;)V

    return-void
.end method

###### Class androidtranscoder.engine.MediaTranscoderEngine.ProgressCallback (androidtranscoder.engine.MediaTranscoderEngine$ProgressCallback)
.class public interface abstract Landroidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidtranscoder/engine/MediaTranscoderEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProgressCallback"
.end annotation


# virtual methods
.method public abstract onProgress(D)V
.end method
