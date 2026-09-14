###### Class org.mozilla.universalchardet.prober.contextanalysis.EUCJPContextAnalysis (org.mozilla.universalchardet.prober.contextanalysis.EUCJPContextAnalysis)
.class public Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;
.super Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;
.source "SourceFile"


# static fields
.field public static final FIRSTPLANE_HIGHBYTE_BEGIN:I = 0xa1

.field public static final FIRSTPLANE_HIGHBYTE_END:I = 0xfe

.field public static final HIRAGANA_HIGHBYTE:I = 0xa4

.field public static final HIRAGANA_LOWBYTE_BEGIN:I = 0xa1

.field public static final HIRAGANA_LOWBYTE_END:I = 0xf3

.field public static final SINGLE_SHIFT_2:I = 0x8e

.field public static final SINGLE_SHIFT_3:I = 0x8f


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

    .line 21
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xa4

    if-ne v0, v1, :cond_18

    add-int/lit8 p2, p2, 0x1

    .line 23
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0xa1

    if-lt p1, p2, :cond_18

    const/16 v0, 0xf3

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

    const/16 v2, 0xa1

    const/16 v3, 0x8e

    if-eq v1, v3, :cond_1f

    if-lt v1, v2, :cond_17

    const/16 v3, 0xfe

    if-gt v1, v3, :cond_17

    goto :goto_1f

    :cond_17
    const/16 v3, 0x8f

    if-ne v1, v3, :cond_22

    const/4 v3, 0x3

    .line 10
    iput v3, p1, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;->charLength:I

    goto :goto_22

    :cond_1f
    :goto_1f
    const/4 v3, 0x2

    .line 11
    iput v3, p1, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;->charLength:I

    :cond_22
    :goto_22
    const/16 v3, 0xa4

    if-ne v1, v3, :cond_34

    add-int/2addr p3, v0

    .line 17
    aget-byte p2, p2, p3

    and-int/lit16 p2, p2, 0xff

    if-lt p2, v2, :cond_34

    const/16 p3, 0xf3

    if-gt p2, p3, :cond_34

    sub-int/2addr p2, v2

    .line 20
    iput p2, p1, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;->order:I

    :cond_34
    return-void
.end method
