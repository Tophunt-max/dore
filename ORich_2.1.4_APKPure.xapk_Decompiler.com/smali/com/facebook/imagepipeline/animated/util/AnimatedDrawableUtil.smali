###### Class com.facebook.imagepipeline.animated.util.AnimatedDrawableUtil (com.facebook.imagepipeline.animated.util.AnimatedDrawableUtil)
.class public Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;
.super Ljava/lang/Object;
.source "AnimatedDrawableUtil.java"


# static fields
.field private static final FRAME_DURATION_MS_FOR_MIN:I = 0x64

.field private static final MIN_FRAME_DURATION_MS:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOutsideRange(III)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startFrame",
            "endFrame",
            "frameNumber"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p0, v0, :cond_15

    if-ne p1, v0, :cond_7

    goto :goto_15

    :cond_7
    const/4 v0, 0x0

    if-gt p0, p1, :cond_11

    if-lt p2, p0, :cond_15

    if-le p2, p1, :cond_f

    goto :goto_15

    :cond_f
    const/4 v1, 0x0

    goto :goto_15

    :cond_11
    if-ge p2, p0, :cond_f

    if-le p2, p1, :cond_f

    :cond_15
    :goto_15
    return v1
.end method


# virtual methods
.method public fixFrameDurations([I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameDurationMs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 35
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_11

    .line 36
    aget v1, p1, v0

    const/16 v2, 0xb

    if-ge v1, v2, :cond_e

    const/16 v1, 0x64

    .line 37
    aput v1, p1, v0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method public getFrameForTimestampMs([II)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "frameTimestampsMs",
            "timestampMs"
        }
    .end annotation

    .line 82
    invoke-static {p1, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_b

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p1, p1, -0x1

    :cond_b
    return p1
.end method

.method public getFrameTimeStampsFromDurations([I)[I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameDurationsMs"
        }
    .end annotation

    .line 64
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 66
    :goto_5
    array-length v3, p1

    if-ge v1, v3, :cond_10

    .line 67
    aput v2, v0, v1

    .line 68
    aget v3, p1, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_10
    return-object v0
.end method

.method public getSizeOfBitmap(Landroid/graphics/Bitmap;)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p1

    return p1

    .line 94
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_16

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    return p1

    .line 98
    :cond_16
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int v0, v0, p1

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getTotalDurationFromFrameDurations([I)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameDurationMs"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_b

    .line 51
    aget v2, p1, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    return v1
.end method
