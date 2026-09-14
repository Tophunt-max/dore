###### Class com.dcloud.zxing2.oned.rss.RSS14Reader (com.dcloud.zxing2.oned.rss.RSS14Reader)
.class public final Lcom/dcloud/zxing2/oned/rss/RSS14Reader;
.super Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;
.source "SourceFile"


# static fields
.field private static final FINDER_PATTERNS:[[I

.field private static final INSIDE_GSUM:[I

.field private static final INSIDE_ODD_TOTAL_SUBSET:[I

.field private static final INSIDE_ODD_WIDEST:[I

.field private static final OUTSIDE_EVEN_TOTAL_SUBSET:[I

.field private static final OUTSIDE_GSUM:[I

.field private static final OUTSIDE_ODD_WIDEST:[I


# instance fields
.field private final possibleLeftPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field

.field private final possibleRightPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_7a

    sput-object v1, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 2
    fill-array-data v2, :array_88

    sput-object v2, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    new-array v2, v0, [I

    .line 3
    fill-array-data v2, :array_94

    sput-object v2, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    new-array v2, v1, [I

    .line 4
    fill-array-data v2, :array_a2

    sput-object v2, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    new-array v2, v0, [I

    .line 5
    fill-array-data v2, :array_ae

    sput-object v2, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    new-array v2, v1, [I

    .line 6
    fill-array-data v2, :array_bc

    sput-object v2, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    const/16 v2, 0x9

    new-array v2, v2, [[I

    new-array v3, v1, [I

    .line 8
    fill-array-data v3, :array_c8

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_d4

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_e0

    const/4 v4, 0x2

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_ec

    const/4 v4, 0x3

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_f8

    aput-object v3, v2, v1

    new-array v3, v1, [I

    fill-array-data v3, :array_104

    aput-object v3, v2, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_110

    const/4 v3, 0x6

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_11c

    const/4 v3, 0x7

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_128

    const/16 v1, 0x8

    aput-object v0, v2, v1

    sput-object v2, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    return-void

    :array_7a
    .array-data 4
        0x1
        0xa
        0x22
        0x46
        0x7e
    .end array-data

    :array_88
    .array-data 4
        0x4
        0x14
        0x30
        0x51
    .end array-data

    :array_94
    .array-data 4
        0x0
        0xa1
        0x3c1
        0x7df
        0xa9b
    .end array-data

    :array_a2
    .array-data 4
        0x0
        0x150
        0x40c
        0x5ec
    .end array-data

    :array_ae
    .array-data 4
        0x8
        0x6
        0x4
        0x3
        0x1
    .end array-data

    :array_bc
    .array-data 4
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_c8
    .array-data 4
        0x3
        0x8
        0x2
        0x1
    .end array-data

    :array_d4
    .array-data 4
        0x3
        0x5
        0x5
        0x1
    .end array-data

    :array_e0
    .array-data 4
        0x3
        0x3
        0x7
        0x1
    .end array-data

    :array_ec
    .array-data 4
        0x3
        0x1
        0x9
        0x1
    .end array-data

    :array_f8
    .array-data 4
        0x2
        0x7
        0x4
        0x1
    .end array-data

    :array_104
    .array-data 4
        0x2
        0x5
        0x6
        0x1
    .end array-data

    :array_110
    .array-data 4
        0x2
        0x3
        0x8
        0x1
    .end array-data

    :array_11c
    .array-data 4
        0x1
        0x5
        0x7
        0x1
    .end array-data

    :array_128
    .array-data 4
        0x1
        0x3
        0x9
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    return-void
.end method

.method private static addOrTally(Ljava/util/Collection;Lcom/dcloud/zxing2/oned/rss/Pair;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/dcloud/zxing2/oned/rss/Pair;",
            ">;",
            "Lcom/dcloud/zxing2/oned/rss/Pair;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dcloud/zxing2/oned/rss/Pair;

    .line 2
    invoke-virtual {v2}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_8

    .line 3
    invoke-virtual {v2}, Lcom/dcloud/zxing2/oned/rss/Pair;->incrementCount()V

    const/4 v0, 0x1

    :cond_22
    if-nez v0, :cond_27

    .line 9
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_27
    return-void
.end method

.method private adjustOddEvenCounts(ZI)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddCounts()[I

    move-result-object v0

    invoke-static {v0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->count([I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    move-result-object v1

    invoke-static {v1}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->count([I)I

    move-result v1

    add-int v2, v0, v1

    sub-int/2addr v2, p2

    and-int/lit8 p2, v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p2, p1, :cond_1b

    const/4 p2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p2, 0x0

    :goto_1c
    and-int/lit8 v5, v1, 0x1

    if-ne v5, v4, :cond_22

    const/4 v5, 0x1

    goto :goto_23

    :cond_22
    const/4 v5, 0x0

    :goto_23
    const/4 v6, 0x4

    if-eqz p1, :cond_39

    const/16 p1, 0xc

    if-le v0, p1, :cond_2d

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto :goto_33

    :cond_2d
    if-ge v0, v6, :cond_31

    const/4 v7, 0x1

    goto :goto_32

    :cond_31
    const/4 v7, 0x0

    :goto_32
    const/4 v8, 0x0

    :goto_33
    if-le v1, p1, :cond_36

    goto :goto_4b

    :cond_36
    if-ge v1, v6, :cond_52

    goto :goto_4f

    :cond_39
    const/16 p1, 0xb

    if-le v0, p1, :cond_40

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto :goto_47

    :cond_40
    const/4 p1, 0x5

    if-ge v0, p1, :cond_45

    const/4 v7, 0x1

    goto :goto_46

    :cond_45
    const/4 v7, 0x0

    :goto_46
    const/4 v8, 0x0

    :goto_47
    const/16 p1, 0xa

    if-le v1, p1, :cond_4d

    :goto_4b
    const/4 p1, 0x1

    goto :goto_53

    :cond_4d
    if-ge v1, v6, :cond_52

    :goto_4f
    const/4 p1, 0x0

    const/4 v3, 0x1

    goto :goto_53

    :cond_52
    const/4 p1, 0x0

    :goto_53
    if-ne v2, v4, :cond_6b

    if-eqz p2, :cond_61

    if-nez v5, :cond_5c

    move v4, v7

    :goto_5a
    const/4 v8, 0x1

    goto :goto_96

    .line 51
    :cond_5c
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_61
    if-eqz v5, :cond_66

    move v4, v7

    :goto_64
    const/4 p1, 0x1

    goto :goto_96

    .line 56
    :cond_66
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_6b
    const/4 v6, -0x1

    if-ne v2, v6, :cond_82

    if-eqz p2, :cond_78

    if-nez v5, :cond_73

    goto :goto_96

    .line 63
    :cond_73
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_78
    if-eqz v5, :cond_7d

    move v4, v7

    const/4 v3, 0x1

    goto :goto_96

    .line 68
    :cond_7d
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_82
    if-nez v2, :cond_e0

    if-eqz p2, :cond_93

    if-eqz v5, :cond_8e

    if-ge v0, v1, :cond_8b

    goto :goto_64

    :cond_8b
    move v4, v7

    const/4 v3, 0x1

    goto :goto_5a

    .line 75
    :cond_8e
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_93
    if-nez v5, :cond_db

    move v4, v7

    :goto_96
    if-eqz v4, :cond_ab

    if-nez v8, :cond_a6

    .line 99
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddCounts()[I

    move-result-object p2

    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v0

    invoke-static {p2, v0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->increment([I[F)V

    goto :goto_ab

    .line 100
    :cond_a6
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_ab
    :goto_ab
    if-eqz v8, :cond_b8

    .line 105
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddCounts()[I

    move-result-object p2

    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v0

    invoke-static {p2, v0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->decrement([I[F)V

    :cond_b8
    if-eqz v3, :cond_cd

    if-nez p1, :cond_c8

    .line 111
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    move-result-object p2

    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v0

    invoke-static {p2, v0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->increment([I[F)V

    goto :goto_cd

    .line 112
    :cond_c8
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_cd
    :goto_cd
    if-eqz p1, :cond_da

    .line 117
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    move-result-object p1

    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getEvenRoundingErrors()[F

    move-result-object p2

    invoke-static {p1, p2}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->decrement([I[F)V

    :cond_da
    return-void

    .line 118
    :cond_db
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    .line 123
    :cond_e0
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method private static checkChecksum(Lcom/dcloud/zxing2/oned/rss/Pair;Lcom/dcloud/zxing2/oned/rss/Pair;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v0

    invoke-virtual {p1}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4f

    .line 3
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/Pair;->getFinderPattern()Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getValue()I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    invoke-virtual {p1}, Lcom/dcloud/zxing2/oned/rss/Pair;->getFinderPattern()Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getValue()I

    move-result p1

    add-int/2addr p0, p1

    const/16 p1, 0x48

    if-le p0, p1, :cond_26

    add-int/lit8 p0, p0, -0x1

    :cond_26
    const/16 p1, 0x8

    if-le p0, p1, :cond_2c

    add-int/lit8 p0, p0, -0x1

    :cond_2c
    if-ne v0, p0, :cond_30

    const/4 p0, 0x1

    goto :goto_31

    :cond_30
    const/4 p0, 0x0

    :goto_31
    return p0
.end method

.method private static constructResult(Lcom/dcloud/zxing2/oned/rss/Pair;Lcom/dcloud/zxing2/oned/rss/Pair;)Lcom/dcloud/zxing2/Result;
    .registers 10

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x453af5

    mul-long v0, v0, v2

    invoke-virtual {p1}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getValue()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xd

    rsub-int/lit8 v2, v2, 0xd

    :goto_23
    const/16 v4, 0x30

    if-lez v2, :cond_2d

    .line 6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    goto :goto_23

    .line 8
    :cond_2d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_33
    if-ge v2, v3, :cond_44

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v4

    and-int/lit8 v7, v2, 0x1

    if-nez v7, :cond_40

    mul-int/lit8 v6, v6, 0x3

    :cond_40
    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_44
    const/16 v2, 0xa

    .line 15
    rem-int/2addr v5, v2

    rsub-int/lit8 v3, v5, 0xa

    if-ne v3, v2, :cond_4c

    const/4 v3, 0x0

    .line 19
    :cond_4c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/Pair;->getFinderPattern()Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getResultPoints()[Lcom/dcloud/zxing2/ResultPoint;

    move-result-object p0

    .line 22
    invoke-virtual {p1}, Lcom/dcloud/zxing2/oned/rss/Pair;->getFinderPattern()Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getResultPoints()[Lcom/dcloud/zxing2/ResultPoint;

    move-result-object p1

    .line 23
    new-instance v2, Lcom/dcloud/zxing2/Result;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/dcloud/zxing2/ResultPoint;

    aget-object v4, p0, v0

    aput-object v4, v3, v0

    const/4 v4, 0x1

    aget-object p0, p0, v4

    aput-object p0, v3, v4

    aget-object p0, p1, v0

    const/4 v0, 0x2

    aput-object p0, v3, v0

    aget-object p0, p1, v4

    const/4 p1, 0x3

    aput-object p0, v3, p1

    sget-object p0, Lcom/dcloud/zxing2/BarcodeFormat;->RSS_14:Lcom/dcloud/zxing2/BarcodeFormat;

    const/4 p1, 0x0

    invoke-direct {v2, v1, p1, v3, p0}, Lcom/dcloud/zxing2/Result;-><init>(Ljava/lang/String;[B[Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/BarcodeFormat;)V

    return-object v2
.end method

.method private decodeDataCharacter(Lcom/dcloud/zxing2/common/BitArray;Lcom/dcloud/zxing2/oned/rss/FinderPattern;Z)Lcom/dcloud/zxing2/oned/rss/DataCharacter;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p3

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getDataCharacterCounters()[I

    move-result-object v2

    const/4 v3, 0x0

    .line 2
    aput v3, v2, v3

    const/4 v4, 0x1

    .line 3
    aput v3, v2, v4

    const/4 v5, 0x2

    .line 4
    aput v3, v2, v5

    const/4 v6, 0x3

    .line 5
    aput v3, v2, v6

    const/4 v7, 0x4

    .line 6
    aput v3, v2, v7

    const/4 v8, 0x5

    .line 7
    aput v3, v2, v8

    const/4 v8, 0x6

    .line 8
    aput v3, v2, v8

    const/4 v8, 0x7

    .line 9
    aput v3, v2, v8

    if-eqz v1, :cond_2c

    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v8

    aget v8, v8, v3

    invoke-static {v0, v8, v2}, Lcom/dcloud/zxing2/oned/OneDReader;->recordPatternInReverse(Lcom/dcloud/zxing2/common/BitArray;I[I)V

    goto :goto_48

    .line 14
    :cond_2c
    invoke-virtual/range {p2 .. p2}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v8

    aget v8, v8, v4

    add-int/2addr v8, v4

    invoke-static {v0, v8, v2}, Lcom/dcloud/zxing2/oned/OneDReader;->recordPattern(Lcom/dcloud/zxing2/common/BitArray;I[I)V

    .line 16
    array-length v0, v2

    sub-int/2addr v0, v4

    const/4 v8, 0x0

    :goto_39
    if-ge v8, v0, :cond_48

    .line 17
    aget v9, v2, v8

    .line 18
    aget v10, v2, v0

    aput v10, v2, v8

    .line 19
    aput v9, v2, v0

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    :cond_48
    :goto_48
    if-eqz v1, :cond_4d

    const/16 v0, 0x10

    goto :goto_4f

    :cond_4d
    const/16 v0, 0xf

    .line 24
    :goto_4f
    invoke-static {v2}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->count([I)I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v0

    div-float/2addr v8, v9

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddCounts()[I

    move-result-object v9

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    move-result-object v10

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v11

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getEvenRoundingErrors()[F

    move-result-object v12

    const/4 v13, 0x0

    .line 31
    :goto_67
    array-length v14, v2

    if-ge v13, v14, :cond_93

    .line 32
    aget v14, v2, v13

    int-to-float v14, v14

    div-float/2addr v14, v8

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v15, v14

    float-to-int v15, v15

    const/16 v3, 0x8

    if-ge v15, v4, :cond_78

    const/4 v15, 0x1

    goto :goto_7c

    :cond_78
    if-le v15, v3, :cond_7c

    const/16 v15, 0x8

    .line 39
    :cond_7c
    :goto_7c
    div-int/lit8 v3, v13, 0x2

    and-int/lit8 v16, v13, 0x1

    if-nez v16, :cond_89

    .line 41
    aput v15, v9, v3

    int-to-float v15, v15

    sub-float/2addr v14, v15

    .line 42
    aput v14, v11, v3

    goto :goto_8f

    .line 44
    :cond_89
    aput v15, v10, v3

    int-to-float v15, v15

    sub-float/2addr v14, v15

    .line 45
    aput v14, v12, v3

    :goto_8f
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    goto :goto_67

    :cond_93
    move-object/from16 v3, p0

    .line 49
    invoke-direct {v3, v1, v0}, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->adjustOddEvenCounts(ZI)V

    .line 53
    array-length v0, v9

    sub-int/2addr v0, v4

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_9c
    if-ltz v0, :cond_a9

    mul-int/lit8 v8, v8, 0x9

    .line 55
    aget v11, v9, v0

    add-int/2addr v8, v11

    .line 56
    aget v11, v9, v0

    add-int/2addr v2, v11

    add-int/lit8 v0, v0, -0x1

    goto :goto_9c

    .line 60
    :cond_a9
    array-length v0, v10

    sub-int/2addr v0, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_ad
    if-ltz v0, :cond_ba

    mul-int/lit8 v11, v11, 0x9

    .line 62
    aget v13, v10, v0

    add-int/2addr v11, v13

    .line 63
    aget v13, v10, v0

    add-int/2addr v12, v13

    add-int/lit8 v0, v0, -0x1

    goto :goto_ad

    :cond_ba
    mul-int/lit8 v11, v11, 0x3

    add-int/2addr v8, v11

    if-eqz v1, :cond_f1

    and-int/lit8 v0, v2, 0x1

    if-nez v0, :cond_ec

    const/16 v0, 0xc

    if-gt v2, v0, :cond_ec

    if-lt v2, v7, :cond_ec

    sub-int/2addr v0, v2

    .line 71
    div-int/2addr v0, v5

    .line 72
    sget-object v1, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    aget v1, v1, v0

    rsub-int/lit8 v2, v1, 0x9

    const/4 v5, 0x0

    .line 74
    invoke-static {v9, v1, v5}, Lcom/dcloud/zxing2/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v1

    .line 75
    invoke-static {v10, v2, v4}, Lcom/dcloud/zxing2/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v2

    .line 76
    sget-object v4, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    aget v4, v4, v0

    .line 77
    sget-object v5, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    aget v0, v5, v0

    .line 78
    new-instance v5, Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    mul-int v1, v1, v4

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    invoke-direct {v5, v1, v8}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;-><init>(II)V

    return-object v5

    .line 79
    :cond_ec
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object v0

    throw v0

    :cond_f1
    and-int/lit8 v0, v12, 0x1

    if-nez v0, :cond_11e

    const/16 v0, 0xa

    if-gt v12, v0, :cond_11e

    if-lt v12, v7, :cond_11e

    sub-int/2addr v0, v12

    .line 93
    div-int/2addr v0, v5

    .line 94
    sget-object v1, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    aget v1, v1, v0

    rsub-int/lit8 v2, v1, 0x9

    .line 96
    invoke-static {v9, v1, v4}, Lcom/dcloud/zxing2/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v1

    const/4 v4, 0x0

    .line 97
    invoke-static {v10, v2, v4}, Lcom/dcloud/zxing2/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v2

    .line 98
    sget-object v4, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    aget v4, v4, v0

    .line 99
    sget-object v5, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    aget v0, v5, v0

    .line 100
    new-instance v5, Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    mul-int v2, v2, v4

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    invoke-direct {v5, v2, v8}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;-><init>(II)V

    return-object v5

    .line 101
    :cond_11e
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private decodePair(Lcom/dcloud/zxing2/common/BitArray;ZILjava/util/Map;)Lcom/dcloud/zxing2/oned/rss/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dcloud/zxing2/common/BitArray;",
            "ZI",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/DecodeHintType;",
            "*>;)",
            "Lcom/dcloud/zxing2/oned/rss/Pair;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_2
    invoke-direct {p0, p1, v1, p2}, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->findFinderPattern(Lcom/dcloud/zxing2/common/BitArray;IZ)[I

    move-result-object v2

    .line 2
    invoke-direct {p0, p1, p3, p2, v2}, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->parseFoundFinderPattern(Lcom/dcloud/zxing2/common/BitArray;IZ[I)Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    move-result-object v3

    if-nez p4, :cond_e

    move-object p4, v0

    goto :goto_16

    .line 4
    :cond_e
    sget-object v4, Lcom/dcloud/zxing2/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/dcloud/zxing2/DecodeHintType;

    .line 5
    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/dcloud/zxing2/ResultPointCallback;

    :goto_16
    const/4 v4, 0x1

    if-eqz p4, :cond_35

    .line 8
    aget v5, v2, v1

    aget v2, v2, v4

    add-int/2addr v5, v2

    int-to-float v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    if-eqz p2, :cond_2c

    .line 11
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result p2

    sub-int/2addr p2, v4

    int-to-float p2, p2

    sub-float v2, p2, v2

    .line 13
    :cond_2c
    new-instance p2, Lcom/dcloud/zxing2/ResultPoint;

    int-to-float p3, p3

    invoke-direct {p2, v2, p3}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    invoke-interface {p4, p2}, Lcom/dcloud/zxing2/ResultPointCallback;->foundPossibleResultPoint(Lcom/dcloud/zxing2/ResultPoint;)V

    .line 16
    :cond_35
    invoke-direct {p0, p1, v3, v4}, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/dcloud/zxing2/common/BitArray;Lcom/dcloud/zxing2/oned/rss/FinderPattern;Z)Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    move-result-object p2

    .line 17
    invoke-direct {p0, p1, v3, v1}, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/dcloud/zxing2/common/BitArray;Lcom/dcloud/zxing2/oned/rss/FinderPattern;Z)Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    move-result-object p1

    .line 18
    new-instance p3, Lcom/dcloud/zxing2/oned/rss/Pair;

    invoke-virtual {p2}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getValue()I

    move-result p4

    mul-int/lit16 p4, p4, 0x63d

    invoke-virtual {p1}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getValue()I

    move-result v1

    add-int/2addr p4, v1

    .line 19
    invoke-virtual {p2}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result p2

    invoke-virtual {p1}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p2, p1

    invoke-direct {p3, p4, p2, v3}, Lcom/dcloud/zxing2/oned/rss/Pair;-><init>(IILcom/dcloud/zxing2/oned/rss/FinderPattern;)V
    :try_end_58
    .catch Lcom/dcloud/zxing2/NotFoundException; {:try_start_2 .. :try_end_58} :catch_59

    return-object p3

    :catch_59
    return-object v0
.end method

.method private findFinderPattern(Lcom/dcloud/zxing2/common/BitArray;IZ)[I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getDecodeFinderCounters()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aput v1, v0, v1

    const/4 v2, 0x1

    .line 3
    aput v1, v0, v2

    const/4 v3, 0x2

    .line 4
    aput v1, v0, v3

    const/4 v4, 0x3

    .line 5
    aput v1, v0, v4

    .line 7
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v5

    const/4 v6, 0x0

    :goto_15
    if-ge p2, v5, :cond_22

    .line 10
    invoke-virtual {p1, p2}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v6

    xor-int/2addr v6, v2

    if-ne p3, v6, :cond_1f

    goto :goto_22

    :cond_1f
    add-int/lit8 p2, p2, 0x1

    goto :goto_15

    :cond_22
    :goto_22
    move p3, p2

    const/4 v7, 0x0

    :goto_24
    if-ge p2, v5, :cond_60

    .line 21
    invoke-virtual {p1, p2}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v8

    xor-int/2addr v8, v6

    if-eqz v8, :cond_33

    .line 22
    aget v8, v0, v7

    add-int/2addr v8, v2

    aput v8, v0, v7

    goto :goto_5d

    :cond_33
    if-ne v7, v4, :cond_57

    .line 25
    invoke-static {v0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->isFinderPattern([I)Z

    move-result v8

    if-eqz v8, :cond_42

    new-array p1, v3, [I

    aput p3, p1, v1

    aput p2, p1, v2

    return-object p1

    .line 28
    :cond_42
    aget v8, v0, v1

    aget v9, v0, v2

    add-int/2addr v8, v9

    add-int/2addr p3, v8

    .line 29
    aget v8, v0, v3

    aput v8, v0, v1

    .line 30
    aget v8, v0, v4

    aput v8, v0, v2

    .line 31
    aput v1, v0, v3

    .line 32
    aput v1, v0, v4

    add-int/lit8 v7, v7, -0x1

    goto :goto_59

    :cond_57
    add-int/lit8 v7, v7, 0x1

    .line 37
    :goto_59
    aput v2, v0, v7

    xor-int/lit8 v6, v6, 0x1

    :goto_5d
    add-int/lit8 p2, p2, 0x1

    goto :goto_24

    .line 41
    :cond_60
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method private parseFoundFinderPattern(Lcom/dcloud/zxing2/common/BitArray;IZ[I)Lcom/dcloud/zxing2/oned/rss/FinderPattern;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    aget v1, p4, v0

    invoke-virtual {p1, v1}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v1

    .line 2
    aget v2, p4, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_b
    if-ltz v2, :cond_17

    .line 4
    invoke-virtual {p1, v2}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v4

    xor-int/2addr v4, v1

    if-eqz v4, :cond_17

    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    :cond_17
    add-int/2addr v2, v3

    .line 8
    aget v1, p4, v0

    sub-int/2addr v1, v2

    .line 10
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getDecodeFinderCounters()[I

    move-result-object v4

    .line 11
    array-length v5, v4

    sub-int/2addr v5, v3

    invoke-static {v4, v0, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    aput v1, v4, v0

    .line 13
    sget-object v1, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    invoke-static {v4, v1}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->parseFinderValue([I[[I)I

    move-result v6

    .line 15
    aget v1, p4, v3

    if-eqz p3, :cond_3f

    .line 18
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result p3

    sub-int/2addr p3, v3

    sub-int/2addr p3, v2

    .line 19
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result p1

    sub-int/2addr p1, v3

    sub-int/2addr p1, v1

    move v9, p1

    move v8, p3

    goto :goto_41

    :cond_3f
    move v9, v1

    move v8, v2

    .line 21
    :goto_41
    new-instance p1, Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    const/4 p3, 0x2

    new-array v7, p3, [I

    aput v2, v7, v0

    aget p3, p4, v3

    aput p3, v7, v3

    move-object v5, p1

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;-><init>(I[IIII)V

    return-object p1
.end method


# virtual methods
.method public decodeRow(ILcom/dcloud/zxing2/common/BitArray;Ljava/util/Map;)Lcom/dcloud/zxing2/Result;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/dcloud/zxing2/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/DecodeHintType;",
            "*>;)",
            "Lcom/dcloud/zxing2/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, v0, p1, p3}, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->decodePair(Lcom/dcloud/zxing2/common/BitArray;ZILjava/util/Map;)Lcom/dcloud/zxing2/oned/rss/Pair;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/dcloud/zxing2/oned/rss/Pair;)V

    .line 3
    invoke-virtual {p2}, Lcom/dcloud/zxing2/common/BitArray;->reverse()V

    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, p2, v1, p1, p3}, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->decodePair(Lcom/dcloud/zxing2/common/BitArray;ZILjava/util/Map;)Lcom/dcloud/zxing2/oned/rss/Pair;

    move-result-object p1

    .line 5
    iget-object p3, p0, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-static {p3, p1}, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/dcloud/zxing2/oned/rss/Pair;)V

    .line 6
    invoke-virtual {p2}, Lcom/dcloud/zxing2/common/BitArray;->reverse()V

    .line 7
    iget-object p1, p0, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_21
    if-ge p2, p1, :cond_59

    .line 9
    iget-object p3, p0, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/dcloud/zxing2/oned/rss/Pair;

    .line 10
    invoke-virtual {p3}, Lcom/dcloud/zxing2/oned/rss/Pair;->getCount()I

    move-result v2

    if-le v2, v1, :cond_56

    .line 11
    iget-object v2, p0, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_38
    if-ge v3, v2, :cond_56

    .line 13
    iget-object v4, p0, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dcloud/zxing2/oned/rss/Pair;

    .line 14
    invoke-virtual {v4}, Lcom/dcloud/zxing2/oned/rss/Pair;->getCount()I

    move-result v5

    if-le v5, v1, :cond_53

    .line 15
    invoke-static {p3, v4}, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->checkChecksum(Lcom/dcloud/zxing2/oned/rss/Pair;Lcom/dcloud/zxing2/oned/rss/Pair;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 16
    invoke-static {p3, v4}, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->constructResult(Lcom/dcloud/zxing2/oned/rss/Pair;Lcom/dcloud/zxing2/oned/rss/Pair;)Lcom/dcloud/zxing2/Result;

    move-result-object p1

    return-object p1

    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_56
    add-int/lit8 p2, p2, 0x1

    goto :goto_21

    .line 22
    :cond_59
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method public reset()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
