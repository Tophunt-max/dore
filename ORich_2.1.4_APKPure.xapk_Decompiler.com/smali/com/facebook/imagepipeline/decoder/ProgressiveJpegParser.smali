###### Class com.facebook.imagepipeline.decoder.ProgressiveJpegParser (com.facebook.imagepipeline.decoder.ProgressiveJpegParser)
.class public Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;
.super Ljava/lang/Object;
.source "ProgressiveJpegParser.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x4000

.field private static final NOT_A_JPEG:I = 0x6

.field private static final READ_FIRST_JPEG_BYTE:I = 0x0

.field private static final READ_MARKER_FIRST_BYTE_OR_ENTROPY_DATA:I = 0x2

.field private static final READ_MARKER_SECOND_BYTE:I = 0x3

.field private static final READ_SECOND_JPEG_BYTE:I = 0x1

.field private static final READ_SIZE_FIRST_BYTE:I = 0x4

.field private static final READ_SIZE_SECOND_BYTE:I = 0x5


# instance fields
.field private mBestScanEndOffset:I

.field private mBestScanNumber:I

.field private final mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

.field private mBytesParsed:I

.field private mEndMarkerRead:Z

.field private mLastByteRead:I

.field private mNextFullScanNumber:I

.field private mParserState:I


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/ByteArrayPool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteArrayPool"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/memory/ByteArrayPool;

    iput-object p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    const/4 p1, 0x0

    .line 87
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBytesParsed:I

    .line 88
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mLastByteRead:I

    .line 89
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mNextFullScanNumber:I

    .line 90
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBestScanEndOffset:I

    .line 91
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBestScanNumber:I

    .line 92
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    return-void
.end method

.method private doParseMoreData(Ljava/io/InputStream;)Z
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "inputStream"
        }
    .end annotation

    .line 141
    iget v0, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBestScanNumber:I

    :goto_2
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x6

    .line 144
    :try_start_5
    iget v4, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    if-eq v4, v3, :cond_96

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_96

    .line 145
    iget v5, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBytesParsed:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBytesParsed:I

    .line 146
    iget-boolean v6, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mEndMarkerRead:Z

    if-eqz v6, :cond_1e

    .line 149
    iput v3, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    .line 150
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mEndMarkerRead:Z

    return v1

    .line 153
    :cond_1e
    iget v6, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    const/16 v7, 0xff

    if-eqz v6, :cond_87

    const/4 v8, 0x2

    if-eq v6, v2, :cond_7d

    const/4 v9, 0x3

    if-eq v6, v8, :cond_78

    const/4 v10, 0x4

    if-eq v6, v9, :cond_4b

    const/4 v5, 0x5

    if-eq v6, v10, :cond_48

    if-eq v6, v5, :cond_36

    .line 218
    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    goto :goto_8e

    .line 205
    :cond_36
    iget v5, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mLastByteRead:I

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v4

    sub-int/2addr v5, v8

    int-to-long v6, v5

    .line 211
    invoke-static {p1, v6, v7}, Lcom/facebook/common/util/StreamUtil;->skip(Ljava/io/InputStream;J)J

    .line 212
    iget v6, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBytesParsed:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBytesParsed:I

    .line 213
    iput v8, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    goto :goto_8e

    .line 201
    :cond_48
    iput v5, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    goto :goto_8e

    :cond_4b
    if-ne v4, v7, :cond_50

    .line 178
    iput v9, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    goto :goto_8e

    :cond_50
    if-nez v4, :cond_55

    .line 180
    iput v8, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    goto :goto_8e

    :cond_55
    const/16 v6, 0xd9

    if-ne v4, v6, :cond_63

    .line 182
    iput-boolean v2, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mEndMarkerRead:Z

    add-int/lit8 v5, v5, -0x2

    .line 183
    invoke-direct {p0, v5}, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->newScanOrImageEndFound(I)V

    .line 186
    iput v8, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    goto :goto_8e

    :cond_63
    const/16 v6, 0xda

    if-ne v4, v6, :cond_6c

    add-int/lit8 v5, v5, -0x2

    .line 189
    invoke-direct {p0, v5}, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->newScanOrImageEndFound(I)V

    .line 192
    :cond_6c
    invoke-static {v4}, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->doesMarkerStartSegment(I)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 193
    iput v10, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    goto :goto_8e

    .line 195
    :cond_75
    iput v8, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    goto :goto_8e

    :cond_78
    if-ne v4, v7, :cond_8e

    .line 172
    iput v9, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    goto :goto_8e

    :cond_7d
    const/16 v5, 0xd8

    if-ne v4, v5, :cond_84

    .line 164
    iput v8, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    goto :goto_8e

    .line 166
    :cond_84
    iput v3, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    goto :goto_8e

    :cond_87
    if-ne v4, v7, :cond_8c

    .line 156
    iput v2, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    goto :goto_8e

    .line 158
    :cond_8c
    iput v3, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    .line 221
    :cond_8e
    :goto_8e
    iput v4, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mLastByteRead:I
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_90} :catch_92

    goto/16 :goto_2

    :catch_92
    move-exception p1

    .line 225
    invoke-static {p1}, Lcom/facebook/common/internal/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 227
    :cond_96
    iget p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    if-eq p1, v3, :cond_9f

    iget p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBestScanNumber:I

    if-eq p1, v0, :cond_9f

    const/4 v1, 0x1

    :cond_9f
    return v1
.end method

.method private static doesMarkerStartSegment(I)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "markerSecondByte"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_5

    return v1

    :cond_5
    const/16 v2, 0xd0

    if-lt p0, v2, :cond_e

    const/16 v2, 0xd7

    if-gt p0, v2, :cond_e

    return v1

    :cond_e
    const/16 v2, 0xd9

    if-eq p0, v2, :cond_17

    const/16 v2, 0xd8

    if-eq p0, v2, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method private newScanOrImageEndFound(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 244
    iget v0, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mNextFullScanNumber:I

    if-lez v0, :cond_6

    .line 245
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBestScanEndOffset:I

    :cond_6
    add-int/lit8 p1, v0, 0x1

    .line 247
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mNextFullScanNumber:I

    iput v0, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBestScanNumber:I

    return-void
.end method


# virtual methods
.method public getBestScanEndOffset()I
    .registers 2

    .line 256
    iget v0, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBestScanEndOffset:I

    return v0
.end method

.method public getBestScanNumber()I
    .registers 2

    .line 261
    iget v0, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBestScanNumber:I

    return v0
.end method

.method public isEndMarkerRead()Z
    .registers 2

    .line 266
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mEndMarkerRead:Z

    return v0
.end method

.method public isJpeg()Z
    .registers 4

    .line 251
    iget v0, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBytesParsed:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_b

    iget v0, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method public parseMoreData(Lcom/facebook/imagepipeline/image/EncodedImage;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "encodedImage"
        }
    .end annotation

    .line 107
    iget v0, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mParserState:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_7

    return v1

    .line 111
    :cond_7
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSize()I

    move-result v0

    .line 116
    iget v2, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBytesParsed:I

    if-gt v0, v2, :cond_10

    return v1

    .line 120
    :cond_10
    new-instance v0, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;

    .line 122
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStreamOrThrow()Ljava/io/InputStream;

    move-result-object p1

    iget-object v2, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    const/16 v3, 0x4000

    invoke-interface {v2, v3}, Lcom/facebook/common/memory/ByteArrayPool;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget-object v3, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    invoke-direct {v0, p1, v2, v3}, Lcom/facebook/common/memory/PooledByteArrayBufferedInputStream;-><init>(Ljava/io/InputStream;[BLcom/facebook/common/references/ResourceReleaser;)V

    .line 124
    :try_start_25
    iget p1, p0, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->mBytesParsed:I

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/facebook/common/util/StreamUtil;->skip(Ljava/io/InputStream;J)J

    .line 125
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->doParseMoreData(Ljava/io/InputStream;)Z

    move-result p1
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2f} :catch_35
    .catchall {:try_start_25 .. :try_end_2f} :catchall_33

    .line 131
    invoke-static {v0}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    return p1

    :catchall_33
    move-exception p1

    goto :goto_3d

    :catch_35
    move-exception p1

    .line 128
    :try_start_36
    invoke-static {p1}, Lcom/facebook/common/internal/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_33

    .line 131
    invoke-static {v0}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    return v1

    :goto_3d
    invoke-static {v0}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    .line 132
    throw p1
.end method
