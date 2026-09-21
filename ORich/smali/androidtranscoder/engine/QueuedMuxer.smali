###### Class androidtranscoder.engine.QueuedMuxer (androidtranscoder.engine.QueuedMuxer)
.class public Landroidtranscoder/engine/QueuedMuxer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidtranscoder/engine/QueuedMuxer$Listener;,
        Landroidtranscoder/engine/QueuedMuxer$SampleInfo;,
        Landroidtranscoder/engine/QueuedMuxer$SampleType;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "QueuedMuxer"


# instance fields
.field private mAudioFormat:Landroid/media/MediaFormat;

.field private mAudioTrackIndex:I

.field private mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mListener:Landroidtranscoder/engine/QueuedMuxer$Listener;

.field private final mMuxer:Landroid/media/MediaMuxer;

.field private final mSampleInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidtranscoder/engine/QueuedMuxer$SampleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStarted:Z

.field private mVideoFormat:Landroid/media/MediaFormat;

.field private mVideoTrackIndex:I


# direct methods
.method public constructor <init>(Landroid/media/MediaMuxer;Landroidtranscoder/engine/QueuedMuxer$Listener;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidtranscoder/engine/QueuedMuxer;->mMuxer:Landroid/media/MediaMuxer;

    .line 3
    iput-object p2, p0, Landroidtranscoder/engine/QueuedMuxer;->mListener:Landroidtranscoder/engine/QueuedMuxer$Listener;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidtranscoder/engine/QueuedMuxer;->mSampleInfoList:Ljava/util/List;

    return-void
.end method

.method private getTrackIndexForSampleType(Landroidtranscoder/engine/QueuedMuxer$SampleType;)I
    .registers 3

    .line 1
    sget-object v0, Landroidtranscoder/engine/QueuedMuxer$1;->$SwitchMap$androidtranscoder$engine$QueuedMuxer$SampleType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    .line 5
    iget p1, p0, Landroidtranscoder/engine/QueuedMuxer;->mAudioTrackIndex:I

    return p1

    .line 7
    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_17
    iget p1, p0, Landroidtranscoder/engine/QueuedMuxer;->mVideoTrackIndex:I

    return p1
.end method

.method private onSetOutputFormat()V
    .registers 8

    .line 1
    iget-object v0, p0, Landroidtranscoder/engine/QueuedMuxer;->mVideoFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_ef

    iget-object v0, p0, Landroidtranscoder/engine/QueuedMuxer;->mAudioFormat:Landroid/media/MediaFormat;

    if-nez v0, :cond_a

    goto/16 :goto_ef

    .line 2
    :cond_a
    iget-object v0, p0, Landroidtranscoder/engine/QueuedMuxer;->mListener:Landroidtranscoder/engine/QueuedMuxer$Listener;

    invoke-interface {v0}, Landroidtranscoder/engine/QueuedMuxer$Listener;->onDetermineOutputFormat()V

    .line 4
    iget-object v0, p0, Landroidtranscoder/engine/QueuedMuxer;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v1, p0, Landroidtranscoder/engine/QueuedMuxer;->mVideoFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Landroidtranscoder/engine/QueuedMuxer;->mVideoTrackIndex:I

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added track #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidtranscoder/engine/QueuedMuxer;->mVideoTrackIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidtranscoder/engine/QueuedMuxer;->mVideoFormat:Landroid/media/MediaFormat;

    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to muxer"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "QueuedMuxer"

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Landroidtranscoder/engine/QueuedMuxer;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v6, p0, Landroidtranscoder/engine/QueuedMuxer;->mAudioFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v6}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Landroidtranscoder/engine/QueuedMuxer;->mAudioTrackIndex:I

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidtranscoder/engine/QueuedMuxer;->mAudioTrackIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidtranscoder/engine/QueuedMuxer;->mAudioFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Landroidtranscoder/engine/QueuedMuxer;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidtranscoder/engine/QueuedMuxer;->mStarted:Z

    .line 11
    iget-object v0, p0, Landroidtranscoder/engine/QueuedMuxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_86

    .line 12
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidtranscoder/engine/QueuedMuxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 14
    :cond_86
    iget-object v0, p0, Landroidtranscoder/engine/QueuedMuxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Output format determined, writing "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidtranscoder/engine/QueuedMuxer;->mSampleInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " samples / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidtranscoder/engine/QueuedMuxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes to muxer."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 21
    iget-object v2, p0, Landroidtranscoder/engine/QueuedMuxer;->mSampleInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidtranscoder/engine/QueuedMuxer$SampleInfo;

    .line 22
    invoke-static {v3, v0, v1}, Landroidtranscoder/engine/QueuedMuxer$SampleInfo;->access$000(Landroidtranscoder/engine/QueuedMuxer$SampleInfo;Landroid/media/MediaCodec$BufferInfo;I)V

    .line 23
    iget-object v4, p0, Landroidtranscoder/engine/QueuedMuxer;->mMuxer:Landroid/media/MediaMuxer;

    invoke-static {v3}, Landroidtranscoder/engine/QueuedMuxer$SampleInfo;->access$100(Landroidtranscoder/engine/QueuedMuxer$SampleInfo;)Landroidtranscoder/engine/QueuedMuxer$SampleType;

    move-result-object v5

    invoke-direct {p0, v5}, Landroidtranscoder/engine/QueuedMuxer;->getTrackIndexForSampleType(Landroidtranscoder/engine/QueuedMuxer$SampleType;)I

    move-result v5

    iget-object v6, p0, Landroidtranscoder/engine/QueuedMuxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5, v6, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 24
    invoke-static {v3}, Landroidtranscoder/engine/QueuedMuxer$SampleInfo;->access$200(Landroidtranscoder/engine/QueuedMuxer$SampleInfo;)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_c3

    .line 26
    :cond_e7
    iget-object v0, p0, Landroidtranscoder/engine/QueuedMuxer;->mSampleInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Landroidtranscoder/engine/QueuedMuxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    :cond_ef
    :goto_ef
    return-void
.end method


# virtual methods
.method public setOutputFormat(Landroidtranscoder/engine/QueuedMuxer$SampleType;Landroid/media/MediaFormat;)V
    .registers 4

    .line 1
    sget-object v0, Landroidtranscoder/engine/QueuedMuxer$1;->$SwitchMap$androidtranscoder$engine$QueuedMuxer$SampleType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    .line 6
    iput-object p2, p0, Landroidtranscoder/engine/QueuedMuxer;->mAudioFormat:Landroid/media/MediaFormat;

    goto :goto_19

    .line 9
    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_17
    iput-object p2, p0, Landroidtranscoder/engine/QueuedMuxer;->mVideoFormat:Landroid/media/MediaFormat;

    .line 18
    :goto_19
    invoke-direct {p0}, Landroidtranscoder/engine/QueuedMuxer;->onSetOutputFormat()V

    return-void
.end method

.method public writeSampleData(Landroidtranscoder/engine/QueuedMuxer$SampleType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Landroidtranscoder/engine/QueuedMuxer;->mStarted:Z

    if-eqz v0, :cond_e

    .line 2
    iget-object v0, p0, Landroidtranscoder/engine/QueuedMuxer;->mMuxer:Landroid/media/MediaMuxer;

    invoke-direct {p0, p1}, Landroidtranscoder/engine/QueuedMuxer;->getTrackIndexForSampleType(Landroidtranscoder/engine/QueuedMuxer$SampleType;)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void

    .line 5
    :cond_e
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 6
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    iget-object v0, p0, Landroidtranscoder/engine/QueuedMuxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2f

    const/high16 v0, 0x10000

    .line 8
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidtranscoder/engine/QueuedMuxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 10
    :cond_2f
    iget-object v0, p0, Landroidtranscoder/engine/QueuedMuxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 11
    iget-object p2, p0, Landroidtranscoder/engine/QueuedMuxer;->mSampleInfoList:Ljava/util/List;

    new-instance v0, Landroidtranscoder/engine/QueuedMuxer$SampleInfo;

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p3, v2}, Landroidtranscoder/engine/QueuedMuxer$SampleInfo;-><init>(Landroidtranscoder/engine/QueuedMuxer$SampleType;ILandroid/media/MediaCodec$BufferInfo;Landroidtranscoder/engine/QueuedMuxer$1;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class androidtranscoder.engine.QueuedMuxer.AnonymousClass1 (androidtranscoder.engine.QueuedMuxer$1)
.class synthetic Landroidtranscoder/engine/QueuedMuxer$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidtranscoder/engine/QueuedMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidtranscoder$engine$QueuedMuxer$SampleType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Landroidtranscoder/engine/QueuedMuxer$SampleType;->values()[Landroidtranscoder/engine/QueuedMuxer$SampleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidtranscoder/engine/QueuedMuxer$1;->$SwitchMap$androidtranscoder$engine$QueuedMuxer$SampleType:[I

    :try_start_9
    sget-object v1, Landroidtranscoder/engine/QueuedMuxer$SampleType;->VIDEO:Landroidtranscoder/engine/QueuedMuxer$SampleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Landroidtranscoder/engine/QueuedMuxer$1;->$SwitchMap$androidtranscoder$engine$QueuedMuxer$SampleType:[I

    sget-object v1, Landroidtranscoder/engine/QueuedMuxer$SampleType;->AUDIO:Landroidtranscoder/engine/QueuedMuxer$SampleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method

###### Class androidtranscoder.engine.QueuedMuxer.Listener (androidtranscoder.engine.QueuedMuxer$Listener)
.class public interface abstract Landroidtranscoder/engine/QueuedMuxer$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidtranscoder/engine/QueuedMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDetermineOutputFormat()V
.end method

###### Class androidtranscoder.engine.QueuedMuxer.SampleInfo (androidtranscoder.engine.QueuedMuxer$SampleInfo)
.class Landroidtranscoder/engine/QueuedMuxer$SampleInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidtranscoder/engine/QueuedMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleInfo"
.end annotation


# instance fields
.field private final mFlags:I

.field private final mPresentationTimeUs:J

.field private final mSampleType:Landroidtranscoder/engine/QueuedMuxer$SampleType;

.field private final mSize:I


# direct methods
.method private constructor <init>(Landroidtranscoder/engine/QueuedMuxer$SampleType;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidtranscoder/engine/QueuedMuxer$SampleInfo;->mSampleType:Landroidtranscoder/engine/QueuedMuxer$SampleType;

    .line 4
    iput p2, p0, Landroidtranscoder/engine/QueuedMuxer$SampleInfo;->mSize:I

    .line 5
    iget-wide p1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide p1, p0, Landroidtranscoder/engine/QueuedMuxer$SampleInfo;->mPresentationTimeUs:J

    .line 6
    iget p1, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput p1, p0, Landroidtranscoder/engine/QueuedMuxer$SampleInfo;->mFlags:I

    return-void
.end method

.method synthetic constructor <init>(Landroidtranscoder/engine/QueuedMuxer$SampleType;ILandroid/media/MediaCodec$BufferInfo;Landroidtranscoder/engine/QueuedMuxer$1;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidtranscoder/engine/QueuedMuxer$SampleInfo;-><init>(Landroidtranscoder/engine/QueuedMuxer$SampleType;ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method static synthetic access$000(Landroidtranscoder/engine/QueuedMuxer$SampleInfo;Landroid/media/MediaCodec$BufferInfo;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidtranscoder/engine/QueuedMuxer$SampleInfo;->writeToBufferInfo(Landroid/media/MediaCodec$BufferInfo;I)V

    return-void
.end method

.method static synthetic access$100(Landroidtranscoder/engine/QueuedMuxer$SampleInfo;)Landroidtranscoder/engine/QueuedMuxer$SampleType;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidtranscoder/engine/QueuedMuxer$SampleInfo;->mSampleType:Landroidtranscoder/engine/QueuedMuxer$SampleType;

    return-object p0
.end method

.method static synthetic access$200(Landroidtranscoder/engine/QueuedMuxer$SampleInfo;)I
    .registers 1

    .line 1
    iget p0, p0, Landroidtranscoder/engine/QueuedMuxer$SampleInfo;->mSize:I

    return p0
.end method

.method private writeToBufferInfo(Landroid/media/MediaCodec$BufferInfo;I)V
    .registers 9

    .line 1
    iget v2, p0, Landroidtranscoder/engine/QueuedMuxer$SampleInfo;->mSize:I

    iget-wide v3, p0, Landroidtranscoder/engine/QueuedMuxer$SampleInfo;->mPresentationTimeUs:J

    iget v5, p0, Landroidtranscoder/engine/QueuedMuxer$SampleInfo;->mFlags:I

    move-object v0, p1

    move v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    return-void
.end method

###### Class androidtranscoder.engine.QueuedMuxer.SampleType (androidtranscoder.engine.QueuedMuxer$SampleType)
.class public final enum Landroidtranscoder/engine/QueuedMuxer$SampleType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidtranscoder/engine/QueuedMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SampleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidtranscoder/engine/QueuedMuxer$SampleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidtranscoder/engine/QueuedMuxer$SampleType;

.field public static final enum AUDIO:Landroidtranscoder/engine/QueuedMuxer$SampleType;

.field public static final enum VIDEO:Landroidtranscoder/engine/QueuedMuxer$SampleType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Landroidtranscoder/engine/QueuedMuxer$SampleType;

    const-string v1, "VIDEO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidtranscoder/engine/QueuedMuxer$SampleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidtranscoder/engine/QueuedMuxer$SampleType;->VIDEO:Landroidtranscoder/engine/QueuedMuxer$SampleType;

    new-instance v1, Landroidtranscoder/engine/QueuedMuxer$SampleType;

    const-string v3, "AUDIO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidtranscoder/engine/QueuedMuxer$SampleType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidtranscoder/engine/QueuedMuxer$SampleType;->AUDIO:Landroidtranscoder/engine/QueuedMuxer$SampleType;

    const/4 v3, 0x2

    new-array v3, v3, [Landroidtranscoder/engine/QueuedMuxer$SampleType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Landroidtranscoder/engine/QueuedMuxer$SampleType;->$VALUES:[Landroidtranscoder/engine/QueuedMuxer$SampleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidtranscoder/engine/QueuedMuxer$SampleType;
    .registers 2

    .line 1
    const-class v0, Landroidtranscoder/engine/QueuedMuxer$SampleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidtranscoder/engine/QueuedMuxer$SampleType;

    return-object p0
.end method

.method public static values()[Landroidtranscoder/engine/QueuedMuxer$SampleType;
    .registers 1

    .line 1
    sget-object v0, Landroidtranscoder/engine/QueuedMuxer$SampleType;->$VALUES:[Landroidtranscoder/engine/QueuedMuxer$SampleType;

    invoke-virtual {v0}, [Landroidtranscoder/engine/QueuedMuxer$SampleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidtranscoder/engine/QueuedMuxer$SampleType;

    return-object v0
.end method
