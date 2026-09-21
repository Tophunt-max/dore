###### Class androidtranscoder.format.MediaFormatPresets (androidtranscoder.format.MediaFormatPresets)
.class public Landroidtranscoder/format/MediaFormatPresets;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LONGER_LENGTH_960x540:I = 0x3c0


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExportPreset960x540()Landroid/media/MediaFormat;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "video/avc"

    const/16 v1, 0x3c0

    const/16 v2, 0x21c

    .line 1
    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "bitrate"

    const v2, 0x53ec60

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "color-format"

    const v2, 0x7f000789

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "frame-rate"

    const/16 v2, 0x1e

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "i-frame-interval"

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getExportPreset960x540(II)Landroid/media/MediaFormat;
    .registers 9

    .line 6
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x3c0

    if-gt v0, v2, :cond_e

    const/4 p0, 0x0

    return-object p0

    :cond_e
    mul-int/lit16 v3, v1, 0x3c0

    .line 11
    rem-int v4, v3, v0

    const/4 v5, 0x1

    if-nez v4, :cond_3f

    .line 19
    div-int/2addr v3, v0

    if-lt p0, p1, :cond_19

    goto :goto_1c

    :cond_19
    move v2, v3

    const/16 v3, 0x3c0

    :goto_1c
    const-string p0, "video/avc"

    .line 29
    invoke-static {p0, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p0

    const p1, 0x53ec60

    const-string v0, "bitrate"

    .line 30
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const p1, 0x7f000789

    const-string v0, "color-format"

    .line 31
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 p1, 0x1e

    const-string v0, "frame-rate"

    .line 32
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "i-frame-interval"

    .line 33
    invoke-virtual {p0, p1, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object p0

    :cond_3f
    int-to-double p0, v1

    const-wide/high16 v3, 0x408e000000000000L    # 960.0

    mul-double p0, p0, v3

    int-to-double v3, v0

    div-double/2addr p0, v3

    .line 34
    new-instance v3, Landroidtranscoder/format/OutputFormatUnavailableException;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v4, v1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v4, p1

    const-string p0, "Could not fit to integer, original: (%d, %d), scaled: (%d, %f)"

    .line 37
    invoke-static {p0, v4}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Landroidtranscoder/format/OutputFormatUnavailableException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
