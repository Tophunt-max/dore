###### Class org.mozilla.universalchardet.prober.contextanalysis.SJISContextAnalysis (org.mozilla.universalchardet.prober.contextanalysis.SJISContextAnalysis)
.class public Lorg/mozilla/universalchardet/prober/contextanalysis/SJISContextAnalysis;
.super Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;
.source "SourceFile"


# static fields
.field public static final HIGHBYTE_BEGIN_1:I = 0x81

.field public static final HIGHBYTE_BEGIN_2:I = 0xe0

.field public static final HIGHBYTE_END_1:I = 0x9f

.field public static final HIGHBYTE_END_2:I = 0xef

.field public static final HIRAGANA_HIGHBYTE:I = 0x82

.field public static final HIRAGANA_LOWBYTE_BEGIN:I = 0x9f

.field public static final HIRAGANA_LOWBYTE_END:I = 0xf1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOrder([BI)I
    .registers 5

    .line 15
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x82

    if-ne v0, v1, :cond_18

    add-int/lit8 p2, p2, 0x1

    .line 17
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x9f

    if-lt p1, p2, :cond_18

    const/16 v0, 0xf1

    if-gt p1, v0, :cond_18

    sub-int/2addr p1, p2

    return p1

    :cond_18
    const/4 p1, -0x1

    return p1
.end method

.method protected getOrder(Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;[BI)V
    .registers 8

    const/4 v0, -0x1

    .line 1
    iput v0, p1, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;->order:I

    const/4 v0, 0x1

    .line 2
    iput v0, p1, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;->charLength:I

    .line 4
    aget-byte v1, p2, p3

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x9f

    const/16 v3, 0x81

    if-lt v1, v3, :cond_12

    if-le v1, v2, :cond_1a

    :cond_12
    const/16 v3, 0xe0

    if-lt v1, v3, :cond_1d

    const/16 v3, 0xef

    if-gt v1, v3, :cond_1d

    :cond_1a
    const/4 v3, 0x2

    .line 7
    iput v3, p1, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;->charLength:I

    :cond_1d
    const/16 v3, 0x82

    if-ne v1, v3, :cond_2f

    add-int/2addr p3, v0

    .line 11
    aget-byte p2, p2, p3

    and-int/lit16 p2, p2, 0xff

    if-lt p2, v2, :cond_2f

    const/16 p3, 0xf1

    if-gt p2, p3, :cond_2f

    sub-int/2addr p2, v2

    .line 14
    iput p2, p1, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;->order:I

    :cond_2f
    return-void
.end method
