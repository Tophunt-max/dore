###### Class androidtranscoder.format.Android720pFormatStrategy (androidtranscoder.format.Android720pFormatStrategy)
.class Landroidtranscoder/format/Android720pFormatStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidtranscoder/format/MediaFormatStrategy;


# static fields
.field public static final AUDIO_BITRATE_AS_IS:I = -0x1

.field public static final AUDIO_CHANNELS_AS_IS:I = -0x1

.field private static final DEFAULT_VIDEO_BITRATE:I = 0x7a1200

.field private static final LONGER_LENGTH:I = 0x500

.field private static final SHORTER_LENGTH:I = 0x2d0

.field private static final TAG:Ljava/lang/String; = "720pFormatStrategy"


# instance fields
.field private compressLevel:I

.field private final mAudioBitrate:I

.field private final mAudioChannels:I

.field private mVideoBitrate:I

.field private resolution:D


# direct methods
.method public constructor <init>(ID)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidtranscoder/format/Android720pFormatStrategy;->compressLevel:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 6
    iput-wide v1, p0, Landroidtranscoder/format/Android720pFormatStrategy;->resolution:D

    const v1, 0x1f400

    .line 11
    iput v1, p0, Landroidtranscoder/format/Android720pFormatStrategy;->mAudioBitrate:I

    .line 12
    iput v0, p0, Landroidtranscoder/format/Android720pFormatStrategy;->mAudioChannels:I

    .line 13
    iput p1, p0, Landroidtranscoder/format/Android720pFormatStrategy;->compressLevel:I

    .line 14
    iput-wide p2, p0, Landroidtranscoder/format/Android720pFormatStrategy;->resolution:D

    return-void
.end method


# virtual methods
.method public createAudioOutputFormat(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .registers 4

    .line 1
    iget v0, p0, Landroidtranscoder/format/Android720pFormatStrategy;->mAudioBitrate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    iget v0, p0, Landroidtranscoder/format/Android720pFormatStrategy;->mAudioChannels:I

    if-ne v0, v1, :cond_a

    goto :goto_26

    :cond_a
    const-string v0, "sample-rate"

    .line 5
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iget v0, p0, Landroidtranscoder/format/Android720pFormatStrategy;->mAudioChannels:I

    const-string v1, "audio/mp4a-latm"

    .line 6
    invoke-static {v1, p1, v0}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    const/4 v0, 0x2

    const-string v1, "aac-profile"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 9
    iget v0, p0, Landroidtranscoder/format/Android720pFormatStrategy;->mAudioBitrate:I

    const-string v1, "bitrate"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object p1

    :cond_26
    :goto_26
    const/4 p1, 0x0

    return-object p1
.end method

.method public createVideoOutputFormat(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .registers 8

    const-string v0, "width"

    .line 1
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "height"

    .line 2
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    .line 5
    iget-wide v1, p0, Landroidtranscoder/format/Android720pFormatStrategy;->resolution:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_35

    .line 6
    iget v1, p0, Landroidtranscoder/format/Android720pFormatStrategy;->compressLevel:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_27

    int-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    :goto_1f
    mul-double v0, v0, v2

    double-to-int v0, v0

    int-to-double v4, p1

    mul-double v4, v4, v2

    double-to-int p1, v4

    goto :goto_3d

    :cond_27
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2e

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    goto :goto_1f

    :cond_2e
    int-to-double v0, v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    goto :goto_1f

    :cond_35
    int-to-double v3, v0

    mul-double v3, v3, v1

    double-to-int v0, v3

    int-to-double v3, p1

    mul-double v3, v3, v1

    double-to-int p1, v3

    .line 21
    :goto_3d
    rem-int/lit8 v1, v0, 0x2

    if-lez v1, :cond_43

    add-int/lit8 v0, v0, 0x1

    .line 24
    :cond_43
    rem-int/lit8 v1, p1, 0x2

    if-lez v1, :cond_49

    add-int/lit8 p1, p1, 0x1

    :cond_49
    mul-int v1, v0, p1

    .line 28
    iput v1, p0, Landroidtranscoder/format/Android720pFormatStrategy;->mVideoBitrate:I

    const-string v1, "video/avc"

    .line 30
    invoke-static {v1, v0, p1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    .line 32
    iget v0, p0, Landroidtranscoder/format/Android720pFormatStrategy;->mVideoBitrate:I

    const-string v1, "bitrate"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v0, 0x19

    const-string v1, "frame-rate"

    .line 33
    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v0, 0x3

    const-string v1, "i-frame-interval"

    .line 34
    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const v0, 0x7f000789

    const-string v1, "color-format"

    .line 35
    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object p1
.end method
