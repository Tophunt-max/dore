###### Class com.dcloud.zxing2.oned.rss.AbstractRSSReader (com.dcloud.zxing2.oned.rss.AbstractRSSReader)
.class public abstract Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;
.super Lcom/dcloud/zxing2/oned/OneDReader;
.source "SourceFile"


# static fields
.field private static final MAX_AVG_VARIANCE:F = 0.2f

.field private static final MAX_FINDER_PATTERN_RATIO:F = 0.89285713f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.45f

.field private static final MIN_FINDER_PATTERN_RATIO:F = 0.7916667f


# instance fields
.field private final dataCharacterCounters:[I

.field private final decodeFinderCounters:[I

.field private final evenCounts:[I

.field private final evenRoundingErrors:[F

.field private final oddCounts:[I

.field private final oddRoundingErrors:[F


# direct methods
.method protected constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/OneDReader;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->decodeFinderCounters:[I

    const/16 v1, 0x8

    new-array v1, v1, [I

    .line 3
    iput-object v1, p0, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    new-array v1, v0, [F

    .line 4
    iput-object v1, p0, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->oddRoundingErrors:[F

    new-array v1, v0, [F

    .line 5
    iput-object v1, p0, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->evenRoundingErrors:[F

    new-array v1, v0, [I

    .line 6
    iput-object v1, p0, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->oddCounts:[I

    new-array v0, v0, [I

    .line 7
    iput-object v0, p0, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->evenCounts:[I

    return-void
.end method

.method protected static count([I)I
    .registers 5

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v1, v0, :cond_b

    aget v3, p0, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    return v2
.end method

.method protected static decrement([I[F)V
    .registers 7

    const/4 v0, 0x0

    .line 1
    aget v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 2
    :goto_5
    array-length v4, p0

    if-ge v3, v4, :cond_15

    .line 3
    aget v4, p1, v3

    cmpg-float v4, v4, v1

    if-gez v4, :cond_12

    .line 4
    aget v0, p1, v3

    move v1, v0

    move v0, v3

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 8
    :cond_15
    aget p1, p0, v0

    sub-int/2addr p1, v2

    aput p1, p0, v0

    return-void
.end method

.method protected static increment([I[F)V
    .registers 7

    const/4 v0, 0x0

    .line 1
    aget v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 2
    :goto_5
    array-length v4, p0

    if-ge v3, v4, :cond_15

    .line 3
    aget v4, p1, v3

    cmpl-float v4, v4, v1

    if-lez v4, :cond_12

    .line 4
    aget v0, p1, v3

    move v1, v0

    move v0, v3

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 8
    :cond_15
    aget p1, p0, v0

    add-int/2addr p1, v2

    aput p1, p0, v0

    return-void
.end method

.method protected static isFinderPattern([I)Z
    .registers 8

    const/4 v0, 0x0

    .line 1
    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    add-int/2addr v1, v3

    const/4 v3, 0x2

    .line 2
    aget v3, p0, v3

    add-int/2addr v3, v1

    const/4 v4, 0x3

    aget v4, p0, v4

    add-int/2addr v3, v4

    int-to-float v1, v1

    int-to-float v3, v3

    div-float/2addr v1, v3

    const v3, 0x3f4aaaab

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_39

    const v3, 0x3f649249

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_39

    const v1, 0x7fffffff

    const/high16 v3, -0x80000000

    .line 8
    array-length v4, p0

    const/4 v5, 0x0

    :goto_27
    if-ge v5, v4, :cond_34

    aget v6, p0, v5

    if-le v6, v3, :cond_2e

    move v3, v6

    :cond_2e
    if-ge v6, v1, :cond_31

    move v1, v6

    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_34
    mul-int/lit8 v1, v1, 0xa

    if-ge v3, v1, :cond_39

    const/4 v0, 0x1

    :cond_39
    return v0
.end method

.method protected static parseFinderValue([I[[I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_18

    .line 2
    aget-object v1, p1, v0

    const v2, 0x3ee66666    # 0.45f

    invoke-static {p0, v1, v2}, Lcom/dcloud/zxing2/oned/OneDReader;->patternMatchVariance([I[IF)F

    move-result v1

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_15

    return v0

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7
    :cond_18
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method protected final getDataCharacterCounters()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    return-object v0
.end method

.method protected final getDecodeFinderCounters()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->decodeFinderCounters:[I

    return-object v0
.end method

.method protected final getEvenCounts()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->evenCounts:[I

    return-object v0
.end method

.method protected final getEvenRoundingErrors()[F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->evenRoundingErrors:[F

    return-object v0
.end method

.method protected final getOddCounts()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->oddCounts:[I

    return-object v0
.end method

.method protected final getOddRoundingErrors()[F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->oddRoundingErrors:[F

    return-object v0
.end method
