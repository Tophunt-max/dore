###### Class androidtranscoder.engine.VideoTrackTranscoder (androidtranscoder.engine.VideoTrackTranscoder)
.class public Landroidtranscoder/engine/VideoTrackTranscoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidtranscoder/engine/TrackTranscoder;


# static fields
.field private static final DRAIN_STATE_CONSUMED:I = 0x2

.field private static final DRAIN_STATE_NONE:I = 0x0

.field private static final DRAIN_STATE_SHOULD_RETRY_IMMEDIATELY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VideoTrackTranscoder"


# instance fields
.field currentFrameCount:I

.field currentSecond:I

.field private frameRate:I

.field private mActualOutputFormat:Landroid/media/MediaFormat;

.field private final mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mDecoder:Landroid/media/MediaCodec;

.field private mDecoderInputBuffers:[Ljava/nio/ByteBuffer;

.field private mDecoderOutputSurfaceWrapper:Landroidtranscoder/engine/OutputSurface;

.field private mDecoderStarted:Z

.field private mEncoder:Landroid/media/MediaCodec;

.field private mEncoderInputSurfaceWrapper:Landroidtranscoder/engine/InputSurface;

.field private mEncoderOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mEncoderStarted:Z

.field private final mExtractor:Landroid/media/MediaExtractor;

.field private mIsDecoderEOS:Z

.field private mIsEncoderEOS:Z

.field private mIsExtractorEOS:Z

.field private final mMuxer:Landroidtranscoder/engine/QueuedMuxer;

.field private final mOutputFormat:Landroid/media/MediaFormat;

.field private final mTrackIndex:I

.field private mWrittenPresentationTimeUs:J


# direct methods
.method public constructor <init>(Landroid/media/MediaExtractor;ILandroid/media/MediaFormat;Landroidtranscoder/engine/QueuedMuxer;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->currentSecond:I

    .line 148
    iput v0, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->currentFrameCount:I

    .line 149
    iput-object p1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    .line 150
    iput p2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mTrackIndex:I

    .line 151
    iput-object p3, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mOutputFormat:Landroid/media/MediaFormat;

    .line 152
    iput-object p4, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mMuxer:Landroidtranscoder/engine/QueuedMuxer;

    return-void
.end method

.method private drainDecoder(J)I
    .registers 7

    .line 1
    iget-boolean v0, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mIsDecoderEOS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 2
    :cond_6
    iget-object v0, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v2, p1, p2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p1

    const/4 p2, -0x3

    const/4 v0, 0x1

    if-eq p1, p2, :cond_b5

    const/4 p2, -0x2

    if-eq p1, p2, :cond_b5

    const/4 p2, -0x1

    if-eq p1, p2, :cond_b4

    .line 10
    iget-object p2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_2b

    .line 11
    iget-object p2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p2}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 12
    iput-boolean v0, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mIsDecoderEOS:Z

    .line 13
    iget-object p2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 15
    :cond_2b
    iget-object p2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez p2, :cond_33

    const/4 p2, 0x1

    goto :goto_34

    :cond_33
    const/4 p2, 0x0

    .line 18
    :goto_34
    iget-object v2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-eqz p2, :cond_b2

    .line 22
    iget-object p1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mDecoderOutputSurfaceWrapper:Landroidtranscoder/engine/OutputSurface;

    invoke-virtual {p1}, Landroidtranscoder/engine/OutputSurface;->awaitNewImage()V

    .line 24
    iget-object p1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide p1, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/32 v2, 0xf4240

    div-long/2addr p1, v2

    long-to-int p2, p1

    .line 26
    iget p1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->currentSecond:I

    if-ne p1, p2, :cond_53

    .line 28
    iget p1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->currentFrameCount:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->currentFrameCount:I

    goto :goto_57

    .line 31
    :cond_53
    iput p2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->currentSecond:I

    .line 32
    iput v1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->currentFrameCount:I

    .line 38
    :goto_57
    iget p1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->frameRate:I

    const/16 p2, 0x1e

    const-wide/16 v0, 0x3e8

    if-gt p1, p2, :cond_75

    .line 40
    iget-object p1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mDecoderOutputSurfaceWrapper:Landroidtranscoder/engine/OutputSurface;

    invoke-virtual {p1}, Landroidtranscoder/engine/OutputSurface;->drawImage()V

    .line 41
    iget-object p1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mEncoderInputSurfaceWrapper:Landroidtranscoder/engine/InputSurface;

    iget-object p2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    mul-long v2, v2, v0

    invoke-virtual {p1, v2, v3}, Landroidtranscoder/engine/InputSurface;->setPresentationTime(J)V

    .line 42
    iget-object p1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mEncoderInputSurfaceWrapper:Landroidtranscoder/engine/InputSurface;

    invoke-virtual {p1}, Landroidtranscoder/engine/InputSurface;->swapBuffers()Z

    goto :goto_b2

    :cond_75
    const/16 p2, 0x32

    if-gt p1, p2, :cond_96

    .line 45
    iget p1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->currentFrameCount:I

    rem-int/lit8 p1, p1, 0x5

    if-nez p1, :cond_80

    goto :goto_b2

    .line 48
    :cond_80
    iget-object p1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mDecoderOutputSurfaceWrapper:Landroidtranscoder/engine/OutputSurface;

    invoke-virtual {p1}, Landroidtranscoder/engine/OutputSurface;->drawImage()V

    .line 49
    iget-object p1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mEncoderInputSurfaceWrapper:Landroidtranscoder/engine/InputSurface;

    iget-object p2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    mul-long v2, v2, v0

    invoke-virtual {p1, v2, v3}, Landroidtranscoder/engine/InputSurface;->setPresentationTime(J)V

    .line 50
    iget-object p1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mEncoderInputSurfaceWrapper:Landroidtranscoder/engine/InputSurface;

    invoke-virtual {p1}, Landroidtranscoder/engine/InputSurface;->swapBuffers()Z

    goto :goto_b2

    .line 54
    :cond_96
    iget p1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->currentFrameCount:I

    rem-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_9d

    goto :goto_b2

    .line 57
    :cond_9d
    iget-object p1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mDecoderOutputSurfaceWrapper:Landroidtranscoder/engine/OutputSurface;

    invoke-virtual {p1}, Landroidtranscoder/engine/OutputSurface;->drawImage()V

    .line 58
    iget-object p1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mEncoderInputSurfaceWrapper:Landroidtranscoder/engine/InputSurface;

    iget-object p2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    mul-long v2, v2, v0

    invoke-virtual {p1, v2, v3}, Landroidtranscoder/engine/InputSurface;->setPresentationTime(J)V

    .line 59
    iget-object p1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mEncoderInputSurfaceWrapper:Landroidtranscoder/engine/InputSurface;

    invoke-virtual {p1}, Landroidtranscoder/engine/InputSurface;->swapBuffers()Z

    :cond_b2
    :goto_b2
    const/4 p1, 0x2

    return p1

    :cond_b4
    return v1

    :cond_b5
    return v0
.end method

.method private drainEncoder(J)I
    .registers 11

    .line 1
    iget-boolean v0, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mIsEncoderEOS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 2
    :cond_6
    iget-object v0, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v2, p1, p2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p1

    const/4 p2, -0x3

    const/4 v0, 0x1

    if-eq p1, p2, :cond_77

    const/4 p2, -0x2

    if-eq p1, p2, :cond_5b

    const/4 p2, -0x1

    if-eq p1, p2, :cond_5a

    .line 16
    iget-object p2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mActualOutputFormat:Landroid/media/MediaFormat;

    if-eqz p2, :cond_52

    .line 20
    iget-object v2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p2, v7, 0x4

    if-eqz p2, :cond_2d

    .line 21
    iput-boolean v0, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mIsEncoderEOS:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    .line 22
    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 43
    :cond_2d
    iget-object p2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-eqz v2, :cond_3b

    .line 45
    iget-object p2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v0

    .line 48
    :cond_3b
    iget-object v0, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mMuxer:Landroidtranscoder/engine/QueuedMuxer;

    sget-object v2, Landroidtranscoder/engine/QueuedMuxer$SampleType;->VIDEO:Landroidtranscoder/engine/QueuedMuxer$SampleType;

    iget-object v4, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mEncoderOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, p1

    invoke-virtual {v0, v2, v4, p2}, Landroidtranscoder/engine/QueuedMuxer;->writeSampleData(Landroidtranscoder/engine/QueuedMuxer$SampleType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 49
    iget-object p2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v4, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mWrittenPresentationTimeUs:J

    .line 50
    iget-object p2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v3

    .line 51
    :cond_52
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not determine actual output format."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5a
    return v1

    .line 23
    :cond_5b
    iget-object p1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mActualOutputFormat:Landroid/media/MediaFormat;

    if-nez p1, :cond_6f

    .line 25
    iget-object p1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mActualOutputFormat:Landroid/media/MediaFormat;

    .line 26
    iget-object p2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mMuxer:Landroidtranscoder/engine/QueuedMuxer;

    sget-object v1, Landroidtranscoder/engine/QueuedMuxer$SampleType;->VIDEO:Landroidtranscoder/engine/QueuedMuxer$SampleType;

    invoke-virtual {p2, v1, p1}, Landroidtranscoder/engine/QueuedMuxer;->setOutputFormat(Landroidtranscoder/engine/QueuedMuxer$SampleType;Landroid/media/MediaFormat;)V

    return v0

    .line 27
    :cond_6f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Video output format changed twice."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_77
    iget-object p1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mEncoderOutputBuffers:[Ljava/nio/ByteBuffer;

    return v0
.end method

.method private drainExtractor(J)I
    .registers 13

    .line 1
    iget-boolean v0, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mIsExtractorEOS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 2
    :cond_6
    iget-object v0, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v0

    if-ltz v0, :cond_13

    .line 3
    iget v2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mTrackIndex:I

    if-eq v0, v2, :cond_13

    return v1

    .line 6
    :cond_13
    iget-object v2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, p1, p2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    if-gez v4, :cond_1c

    return v1

    :cond_1c
    const/4 p1, 0x1

    if-gez v0, :cond_2c

    .line 9
    iput-boolean p1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mIsExtractorEOS:Z

    .line 10
    iget-object v3, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return v1

    .line 13
    :cond_2c
    iget-object p2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    iget-object v0, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mDecoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v4

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v6

    .line 14
    iget-object p2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result p2

    and-int/2addr p2, p1

    if-eqz p2, :cond_41

    const/4 v9, 0x1

    goto :goto_42

    :cond_41
    const/4 v9, 0x0

    .line 15
    :goto_42
    iget-object v3, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    iget-object p1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 16
    iget-object p1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z

    const/4 p1, 0x2

    return p1
.end method


# virtual methods
.method public getDeterminedFormat()Landroid/media/MediaFormat;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mActualOutputFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public getWrittenPresentationTimeUs()J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mWrittenPresentationTimeUs:J

    return-wide v0
.end method

.method public isFinished()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mIsEncoderEOS:Z

    return v0
.end method

.method public release()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mDecoderOutputSurfaceWrapper:Landroidtranscoder/engine/OutputSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Landroidtranscoder/engine/OutputSurface;->release()V

    .line 3
    iput-object v1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mDecoderOutputSurfaceWrapper:Landroidtranscoder/engine/OutputSurface;

    .line 5
    :cond_a
    iget-object v0, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mEncoderInputSurfaceWrapper:Landroidtranscoder/engine/InputSurface;

    if-eqz v0, :cond_13

    .line 6
    invoke-virtual {v0}, Landroidtranscoder/engine/InputSurface;->release()V

    .line 7
    iput-object v1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mEncoderInputSurfaceWrapper:Landroidtranscoder/engine/InputSurface;

    .line 9
    :cond_13
    iget-object v0, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_25

    .line 10
    iget-boolean v2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mDecoderStarted:Z

    if-eqz v2, :cond_1e

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 11
    :cond_1e
    iget-object v0, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 12
    iput-object v1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    .line 14
    :cond_25
    iget-object v0, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_37

    .line 15
    iget-boolean v2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mEncoderStarted:Z

    if-eqz v2, :cond_30

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 16
    :cond_30
    iget-object v0, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 17
    iput-object v1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    :cond_37
    return-void
.end method

.method public setup()V
    .registers 8

    const-string v0, "mime"

    .line 1
    iget-object v1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    iget v2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mTrackIndex:I

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 3
    :try_start_9
    iget-object v1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mOutputFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_15} :catch_9a

    .line 7
    iget-object v2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mOutputFormat:Landroid/media/MediaFormat;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 8
    new-instance v1, Landroidtranscoder/engine/InputSurface;

    iget-object v2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidtranscoder/engine/InputSurface;-><init>(Landroid/view/Surface;)V

    iput-object v1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mEncoderInputSurfaceWrapper:Landroidtranscoder/engine/InputSurface;

    .line 9
    invoke-virtual {v1}, Landroidtranscoder/engine/InputSurface;->makeCurrent()V

    .line 10
    iget-object v1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 11
    iput-boolean v4, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mEncoderStarted:Z

    .line 12
    iget-object v1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mEncoderOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 14
    iget-object v1, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    iget v2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mTrackIndex:I

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "rotation-degrees"

    .line 15
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4f

    .line 19
    invoke-virtual {v1, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 22
    :cond_4f
    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "video/"

    .line 23
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    const-string v2, "frame-rate"

    .line 24
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 25
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->frameRate:I

    .line 29
    :cond_69
    new-instance v2, Landroidtranscoder/engine/OutputSurface;

    invoke-direct {v2}, Landroidtranscoder/engine/OutputSurface;-><init>()V

    iput-object v2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mDecoderOutputSurfaceWrapper:Landroidtranscoder/engine/OutputSurface;

    .line 31
    :try_start_70
    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_7a} :catch_93

    .line 35
    iget-object v2, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mDecoderOutputSurfaceWrapper:Landroidtranscoder/engine/OutputSurface;

    invoke-virtual {v2}, Landroidtranscoder/engine/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 36
    iget-object v0, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 37
    iput-boolean v4, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mDecoderStarted:Z

    .line 38
    iget-object v0, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidtranscoder/engine/VideoTrackTranscoder;->mDecoderInputBuffers:[Ljava/nio/ByteBuffer;

    return-void

    :catch_93
    move-exception v0

    .line 39
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_9a
    move-exception v0

    .line 40
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stepPipeline()Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_2
    const-wide/16 v2, 0x0

    .line 1
    invoke-direct {p0, v2, v3}, Landroidtranscoder/engine/VideoTrackTranscoder;->drainEncoder(J)I

    move-result v4

    if-eqz v4, :cond_c

    const/4 v1, 0x1

    goto :goto_2

    .line 3
    :cond_c
    invoke-direct {p0, v2, v3}, Landroidtranscoder/engine/VideoTrackTranscoder;->drainDecoder(J)I

    move-result v4

    if-eqz v4, :cond_13

    const/4 v1, 0x1

    :cond_13
    if-eq v4, v0, :cond_c

    .line 7
    :goto_15
    invoke-direct {p0, v2, v3}, Landroidtranscoder/engine/VideoTrackTranscoder;->drainExtractor(J)I

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v1, 0x1

    goto :goto_15

    :cond_1d
    return v1
.end method
